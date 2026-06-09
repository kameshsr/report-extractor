#!/usr/bin/env python3
"""
MOSIP Jira Bulk Updater
Automates for any list of tickets:
  - Add comment "Env is decommissioned"
  - Update Resolved by → Kamesh Shekhar Prasad
  - Update Assignee → swetha.N
  - Transition Status → Testing (handles multi-step workflows automatically)

Usage:
  python jira_bulk_update.py MOSIP-111 MOSIP-222 MOSIP-333
  -- or --
  Edit the TICKETS list below and just run:  python jira_bulk_update.py

Requirements:
  pip install requests

API Token:
  Generate at https://id.atlassian.com/manage-api-tokens
"""

import sys
import requests

# ─── CONFIG ────────────────────────────────────────────────────────────────────
JIRA_BASE  = "https://mosip.atlassian.net"
EMAIL      = "kameshsr1338@gmail.com"
API_TOKEN  = "token"   # ← paste your token here

COMMENT        = "Issue fixed"  # comment to add to each ticket
ASSIGNEE_QUERY = "Kamesh"            # search term to find swetha.N
RESOLVED_BY_QUERY = "Kamesh"        # search term to find Kamesh Shekhar Prasad

# Hardcode tickets here, OR pass them as command-line arguments
TICKETS = [
    # "MOSIP-34496",
    # "MOSIP-XXXXX",
]
# ───────────────────────────────────────────────────────────────────────────────

AUTH    = (EMAIL, API_TOKEN)
HEADERS = {"Content-Type": "application/json", "Accept": "application/json"}

def api_get(path):
    return requests.get(f"{JIRA_BASE}/rest/api/3{path}", auth=AUTH, headers=HEADERS)

def api_post(path, body):
    return requests.post(f"{JIRA_BASE}/rest/api/3{path}", auth=AUTH, headers=HEADERS, json=body)

def api_put(path, body):
    return requests.put(f"{JIRA_BASE}/rest/api/3{path}", auth=AUTH, headers=HEADERS, json=body)


# ── Cached lookups (resolved once, reused for all tickets) ───────────────────
_cache = {}

def lookup_user(query, label):
    if query in _cache:
        return _cache[query]
    r = api_get(f"/user/search?query={requests.utils.quote(query)}")
    r.raise_for_status()
    users = r.json()
    if not users:
        raise RuntimeError(f"No Jira user found for query '{query}'")
    user = users[0]
    _cache[query] = user["accountId"]
    print(f"  Resolved {label}: {user['displayName']} ({user['accountId']})")
    return _cache[query]

def find_resolved_by_field(ticket):
    """Auto-detect the custom field ID for 'Resolved by'."""
    if "resolved_by_field" in _cache:
        return _cache["resolved_by_field"]
    r = api_get(f"/issue/{ticket}?expand=names")
    r.raise_for_status()
    names = r.json().get("names", {})
    for fid, fname in names.items():
        if "resolved" in fname.lower() and "by" in fname.lower():
            _cache["resolved_by_field"] = fid
            print(f"  Detected 'Resolved by' field: {fid} ({fname})")
            return fid
    # Print available custom fields to help the user identify it manually
    print("  ⚠ Could not auto-detect 'Resolved by' field. Available custom fields:")
    for fid, fname in names.items():
        if fid.startswith("customfield"):
            print(f"    {fid}: {fname}")
    raise RuntimeError("Could not find 'Resolved by' field ID. Set it manually in RESOLVED_BY_FIELD.")


# ── Per-ticket operations ────────────────────────────────────────────────────

def add_comment(ticket):
    body = {
        "body": {
            "type": "doc", "version": 1,
            "content": [{"type": "paragraph",
                          "content": [{"type": "text", "text": COMMENT}]}]
        }
    }
    r = api_post(f"/issue/{ticket}/comment", body)
    if r.status_code != 201:
        raise RuntimeError(f"comment failed {r.status_code}: {r.text[:200]}")
    print(f"  ✓ Comment added")


def update_assignee(ticket):
    account_id = lookup_user(ASSIGNEE_QUERY, "assignee")
    r = api_put(f"/issue/{ticket}/assignee", {"accountId": account_id})
    if r.status_code != 204:
        raise RuntimeError(f"assignee update failed {r.status_code}: {r.text[:200]}")
    print(f"  ✓ Assignee → swetha.N")


def update_resolved_by(ticket):
    fid = find_resolved_by_field(ticket)
    account_id = lookup_user(RESOLVED_BY_QUERY, "resolved-by")
    body = {"fields": {fid: {"accountId": account_id}}}
    r = requests.put(f"{JIRA_BASE}/rest/api/3/issue/{ticket}",
                     auth=AUTH, headers=HEADERS, json=body)
    if r.status_code not in (200, 204):
        print(f"  ⚠ Resolved by update returned {r.status_code}: {r.text[:200]}")
    else:
        print(f"  ✓ Resolved by → Kamesh Shekhar Prasad")


def transition_to_testing(ticket):
    """
    Walk the workflow until we reach 'Testing'.
    Handles any multi-step path automatically (e.g. Fixed → Documentation → Testing).
    """
    MAX_STEPS = 15
    PREFERRED_INTERMEDIATES = ["documentation", "in progress", "assigned", "fixed"]

    for step in range(MAX_STEPS):
        # Current status
        issue = api_get(f"/issue/{ticket}?fields=status").json()
        current = issue["fields"]["status"]["name"]
        if current.lower() == "testing":
            print(f"  ✓ Status → Testing")
            return

        transitions = api_get(f"/issue/{ticket}/transitions").json().get("transitions", [])
        if not transitions:
            raise RuntimeError(f"No transitions available from '{current}' — cannot reach Testing")

        # Prefer a direct path to Testing
        direct = next((t for t in transitions if t["to"]["name"].lower() == "testing"), None)
        if direct:
            r = api_post(f"/issue/{ticket}/transitions", {"transition": {"id": direct["id"]}})
            if r.status_code != 204:
                raise RuntimeError(f"transition failed {r.status_code}: {r.text[:200]}")
            print(f"  ✓ Status → Testing (via '{direct['name']}')")
            return

        # Take the best intermediate step toward Testing
        intermediate = next(
            (t for t in transitions
             if t["to"]["name"].lower() in PREFERRED_INTERMEDIATES), None
        ) or transitions[0]

        r = api_post(f"/issue/{ticket}/transitions", {"transition": {"id": intermediate["id"]}})
        if r.status_code != 204:
            raise RuntimeError(f"intermediate transition failed {r.status_code}: {r.text[:200]}")
        print(f"  → {current} → {intermediate['to']['name']}")

    raise RuntimeError(f"Gave up after {MAX_STEPS} steps — could not reach Testing")


# ── Main ─────────────────────────────────────────────────────────────────────

def process_ticket(ticket):
    ticket = ticket.strip().upper()
    print(f"\n{'─'*55}")
    print(f"▶  {ticket}")
    try:
        add_comment(ticket)
        update_assignee(ticket)
        update_resolved_by(ticket)
        transition_to_testing(ticket)
        print(f"✅  {ticket} — all updates done")
        return True
    except Exception as e:
        print(f"❌  {ticket} — FAILED: {e}")
        return False


if __name__ == "__main__":
    if API_TOKEN == "YOUR_API_TOKEN_HERE":
        print("ERROR: Set your API_TOKEN in the CONFIG section.")
        print("Generate one at: https://id.atlassian.com/manage-api-tokens")
        sys.exit(1)

    tickets = sys.argv[1:] if len(sys.argv) > 1 else TICKETS
    if not tickets:
        print("No tickets specified. Add them to the TICKETS list or pass as arguments:")
        print("  python jira_bulk_update.py MOSIP-111 MOSIP-222")
        sys.exit(1)

    print(f"Processing {len(tickets)} ticket(s): {', '.join(tickets)}")
    results = [process_ticket(t) for t in tickets]
    passed = sum(results)
    print(f"\n{'═'*55}")
    print(f"Done: {passed}/{len(tickets)} succeeded")
