#!/usr/bin/env python3
"""
compare_all_files_to_excel.py

Compare two directories recursively and produce an Excel report.
- Property files (.properties) are compared per-key (added/removed/modified).
- Other files are compared by raw content; text diffs produce before/after content (truncated).
- Binary files are detected (NUL byte) and compared by SHA256 hash.

Usage:
python compare_all_files_to_excel.py \
  --old "C:\path\to\old" \
  --new "C:\path\to\new" \
  --output "C:\path\to\diff.xlsx"
  python compare_props_to_excel.py --old "C:\Users\kames\Downloads\mosip\mosip-config-release-1.3.x\mosip-config-release-1.3.x" --new "C:\Users\kames\Downloads\mosip\mosip-config-devupgrade\mosip-config-devupgrade" --output "C:\Users\kames\Downloads\mosip\diff.xlsx"
"""
import argparse
from pathlib import Path
import re
import hashlib
import pandas as pd

TRUNCATE_CHARS = 10000  # truncate long file contents in Excel

# ---------- helpers ----------
def is_binary_bytes(b: bytes) -> bool:
    # heuristic: presence of a NUL byte indicates binary
    return b.find(b'\x00') != -1

def sha256_bytes(b: bytes) -> str:
    return hashlib.sha256(b).hexdigest()

def read_bytes(path: Path) -> bytes:
    try:
        return path.read_bytes()
    except Exception as e:
        return b''

def read_text(path: Path) -> str:
    try:
        return path.read_text(encoding='utf-8', errors='replace')
    except Exception:
        # fallback to binary-read decode
        return read_bytes(path).decode('utf-8', errors='replace')

# Robust .properties parser (supports continuation lines and escaped unicode)
def parse_properties(path: Path):
    props = {}
    if not path or not path.exists():
        return props
    with path.open('r', encoding='utf-8', errors='replace') as f:
        logical = ''
        for raw in f:
            line = raw.rstrip('\n')
            # skip BOM on first line
            if logical == '' and line.startswith('\ufeff'):
                line = line.lstrip('\ufeff')
            # continuation if line ends with an odd number of unescaped backslashes
            if re.search(r'(?<!\\)\\$', line):
                logical += line[:-1] + '\n'
                continue
            else:
                logical += line
            s = logical.strip()
            logical = ''
            if not s or s.startswith('#') or s.startswith('!'):
                continue
            # split on first unescaped = or : or whitespace
            m = re.match(r'((?:\\.|[^:=\s])*)(\s*[:=]\s*|\s+)(.*)$', s)
            if m:
                key = m.group(1).strip()
                val = m.group(3).strip()
            else:
                if '=' in s:
                    key, val = s.split('=', 1)
                else:
                    parts = s.split(None, 1)
                    key = parts[0]
                    val = parts[1] if len(parts) > 1 else ''
            # unescape common escape sequences
            try:
                key = bytes(key, "utf-8").decode("unicode_escape")
                val = bytes(val, "utf-8").decode("unicode_escape")
            except Exception:
                pass
            props[key] = val
    return props

# ---------- discovery ----------
def list_all_files(root: Path):
    # Return dict relative_path -> absolute Path for all files
    root = Path(root)
    files = {}
    for p in root.rglob('*'):
        if p.is_file():
            rel = str(p.relative_to(root)).replace('\\', '/')
            files[rel] = p
    return files

# ---------- comparison ----------
def compare_dirs(old_dir: Path, new_dir: Path):
    old_files = list_all_files(old_dir)
    new_files = list_all_files(new_dir)
    all_paths = sorted(set(old_files.keys()) | set(new_files.keys()))

    rows = []

    for rel in all_paths:
        old_path = old_files.get(rel)
        new_path = new_files.get(rel)

        # file only in old -> removed
        if old_path and not new_path:
            # if properties file, try listing keys for removed
            if rel.endswith('.properties'):
                old_props = parse_properties(old_path)
                for k in sorted(old_props.keys()):
                    rows.append({
                        'file': rel,
                        'property': k,
                        'before': old_props.get(k, ''),
                        'after': '',
                        'change': 'removed'
                    })
            else:
                # non-properties: include contents (text or hash)
                b = read_bytes(old_path)
                if is_binary_bytes(b):
                    rows.append({
                        'file': rel,
                        'property': '',
                        'before': f"SHA256:{sha256_bytes(b)}",
                        'after': '',
                        'change': 'file_removed_binary'
                    })
                else:
                    txt = b.decode('utf-8', errors='replace')
                    if len(txt) > TRUNCATE_CHARS:
                        txt = txt[:TRUNCATE_CHARS] + "\n...[TRUNCATED]"
                    rows.append({
                        'file': rel,
                        'property': '',
                        'before': txt,
                        'after': '',
                        'change': 'file_removed'
                    })
            continue

        # file only in new -> added
        if new_path and not old_path:
            if rel.endswith('.properties'):
                new_props = parse_properties(new_path)
                for k in sorted(new_props.keys()):
                    rows.append({
                        'file': rel,
                        'property': k,
                        'before': '',
                        'after': new_props.get(k, ''),
                        'change': 'added'
                    })
            else:
                b = read_bytes(new_path)
                if is_binary_bytes(b):
                    rows.append({
                        'file': rel,
                        'property': '',
                        'before': '',
                        'after': f"SHA256:{sha256_bytes(b)}",
                        'change': 'file_added_binary'
                    })
                else:
                    txt = b.decode('utf-8', errors='replace')
                    if len(txt) > TRUNCATE_CHARS:
                        txt = txt[:TRUNCATE_CHARS] + "\n...[TRUNCATED]"
                    rows.append({
                        'file': rel,
                        'property': '',
                        'before': '',
                        'after': txt,
                        'change': 'file_added'
                    })
            continue

        # file exists in both
        # same path; check if properties file
        if rel.endswith('.properties'):
            old_props = parse_properties(old_path)
            new_props = parse_properties(new_path)
            old_keys = set(old_props.keys())
            new_keys = set(new_props.keys())

            for k in sorted(old_keys & new_keys):
                ov = old_props.get(k, '')
                nv = new_props.get(k, '')
                if ov != nv:
                    rows.append({
                        'file': rel,
                        'property': k,
                        'before': ov,
                        'after': nv,
                        'change': 'modified'
                    })
            for k in sorted(new_keys - old_keys):
                rows.append({
                    'file': rel,
                    'property': k,
                    'before': '',
                    'after': new_props.get(k, ''),
                    'change': 'added'
                })
            for k in sorted(old_keys - new_keys):
                rows.append({
                    'file': rel,
                    'property': k,
                    'before': old_props.get(k, ''),
                    'after': '',
                    'change': 'removed'
                })
            continue

        # Non-properties: compare by bytes
        old_b = read_bytes(old_path)
        new_b = read_bytes(new_path)

        if old_b == new_b:
            # identical, skip
            continue

        # if either is binary, mark binary_modified and show hashes
        if is_binary_bytes(old_b) or is_binary_bytes(new_b):
            rows.append({
                'file': rel,
                'property': '',
                'before': f"SHA256:{sha256_bytes(old_b)}",
                'after': f"SHA256:{sha256_bytes(new_b)}",
                'change': 'binary_modified'
            })
            continue

        # both are text and different -> include text contents (truncated)
        old_txt = old_b.decode('utf-8', errors='replace')
        new_txt = new_b.decode('utf-8', errors='replace')
        if len(old_txt) > TRUNCATE_CHARS:
            old_txt = old_txt[:TRUNCATE_CHARS] + "\n...[TRUNCATED]"
        if len(new_txt) > TRUNCATE_CHARS:
            new_txt = new_txt[:TRUNCATE_CHARS] + "\n...[TRUNCATED]"

        rows.append({
            'file': rel,
            'property': '',
            'before': old_txt,
            'after': new_txt,
            'change': 'file_modified'
        })

    return rows

# ---------- main ----------
def main():
    ap = argparse.ArgumentParser(description="Compare two directories (all files) and produce Excel.")
    ap.add_argument("--old", required=True, help="Path to old directory")
    ap.add_argument("--new", required=True, help="Path to new directory")
    ap.add_argument("--output", default="diff_all.xlsx", help="Output Excel path")
    args = ap.parse_args()

    old_dir = Path(args.old)
    new_dir = Path(args.new)

    if not old_dir.exists():
        raise SystemExit(f"Old directory not found: {old_dir}")
    if not new_dir.exists():
        raise SystemExit(f"New directory not found: {new_dir}")

    rows = compare_dirs(old_dir, new_dir)
    if not rows:
        print("No differences found.")
        # still produce an empty sheet
        pd.DataFrame([{"note": "No differences found"}]).to_excel(args.output, index=False, sheet_name="note")
        print(f"Excel written to {args.output}")
        return

    df = pd.DataFrame(rows)
    # Create separate sheets for property changes and file changes for easier viewing
    prop_df = df[df['property'] != ''].sort_values(['file', 'property'])
    file_df = df[df['property'] == ''].sort_values(['file'])

    with pd.ExcelWriter(args.output, engine='openpyxl') as writer:
        if not prop_df.empty:
            prop_df.to_excel(writer, index=False, sheet_name='property_changes')
        if not file_df.empty:
            file_df.to_excel(writer, index=False, sheet_name='file_changes')

    print(f"✔ Comparison completed. Excel generated at: {args.output}")

if __name__ == "__main__":
    main()
