import argparse
from pathlib import Path
import re
import pandas as pd


# python compare_props_to_excel.py `
# --old "C:\Users\kames\Downloads\mosip\mosip-config-1.2.0.1\mosip-config-1.2.0.1" `
# --new "C:\Users\kames\Downloads\mosip\mosip-config-release-1.3.x\mosip-config-release-1.3.x" `
# --output "C:\Users\kames\Downloads\mosip_config_diffdefault.xlsx"


def parse_properties(path: Path):
    """Parse .properties file into a dict."""
    props = {}
    if not path.exists():
        return props
    with path.open("r", encoding="utf-8", errors="replace") as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#") or line.startswith("!"):
                continue
            # key=value or key: value
            m = re.match(r"([^:=\s]+)\s*[:=]\s*(.*)", line)
            if m:
                key, value = m.groups()
                props[key.strip()] = value.strip()
    return props


def find_properties_files(root: Path):
    """Return all .properties files under root."""
    return [p for p in root.rglob("*.properties")]


def compare_directories(old_dir: Path, new_dir: Path):
    results = []

    old_files = {str(p.relative_to(old_dir)): p for p in find_properties_files(old_dir)}
    new_files = {str(p.relative_to(new_dir)): p for p in find_properties_files(new_dir)}

    # Set of all relative property file paths
    all_files = sorted(set(old_files.keys()) | set(new_files.keys()))

    for rel_path in all_files:
        old_file = old_files.get(rel_path)
        new_file = new_files.get(rel_path)

        old_props = parse_properties(old_file) if old_file else {}
        new_props = parse_properties(new_file) if new_file else {}

        old_keys = set(old_props.keys())
        new_keys = set(new_props.keys())

        # Determine changes
        modified = old_keys & new_keys
        added = new_keys - old_keys
        removed = old_keys - new_keys

        # Modified values
        for key in sorted(modified):
            ov = old_props.get(key)
            nv = new_props.get(key)
            if ov != nv:
                results.append({
                    "file": rel_path,
                    "property": key,
                    "before": ov,
                    "after": nv,
                    "change": "modified"
                })

        # Added
        for key in sorted(added):
            results.append({
                "file": rel_path,
                "property": key,
                "before": "",
                "after": new_props.get(key),
                "change": "added"
            })

        # Removed
        for key in sorted(removed):
            results.append({
                "file": rel_path,
                "property": key,
                "before": old_props.get(key),
                "after": "",
                "change": "removed"
            })

    return results


def main():
    parser = argparse.ArgumentParser(description="Compare two config folders without git.")
    parser.add_argument("--old", required=True, help="Path to old config directory")
    parser.add_argument("--new", required=True, help="Path to new config directory")
    parser.add_argument("--output", default="diff.xlsx", help="Output excel file")
    args = parser.parse_args()

    old_dir = Path(args.old)
    new_dir = Path(args.new)

    rows = compare_directories(old_dir, new_dir)

    df = pd.DataFrame(rows)
    df.to_excel(args.output, index=False)

    print(f"✔ Comparison completed. Excel generated at: {args.output}")


if __name__ == "__main__":
    main()
