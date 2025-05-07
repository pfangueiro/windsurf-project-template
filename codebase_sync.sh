# ────────────────────────────────
# File: codebase_sync.sh
# ────────────────────────────────
#!/bin/bash

# Variables
SNAPSHOT_FILE="codebase_snapshot.md"
LINKS_FILE="code_links.md"

# Ensure working in project root
cd "$(dirname "$0")"

# Start fresh
echo "# Codebase Snapshot" > "$SNAPSHOT_FILE"
echo "# Codebase File Links" > "$LINKS_FILE"

# Recursive function
function walk_dir() {
  local dir="$1"
  for file in "$dir"/*; do
    if [[ -f "$file" ]]; then
      echo -e "\n## File: $file" >> "$SNAPSHOT_FILE"
      echo '\n```' >> "$SNAPSHOT_FILE"
      head -n 100 "$file" >> "$SNAPSHOT_FILE"
      echo '\n```' >> "$SNAPSHOT_FILE"
      echo "- [$file](file://$file)" >> "$LINKS_FILE"
    elif [[ -d "$file" ]]; then
      walk_dir "$file"
    fi
  done
}

# Walk code/ and ai/stories/
walk_dir "code"
walk_dir "ai/stories"

# Done
echo "[Codebase Sync Completed] Snapshot written to $SNAPSHOT_FILE"
echo "Links written to $LINKS_FILE"
exit 0
