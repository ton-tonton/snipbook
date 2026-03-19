#!/bin/bash
set -o pipefail

QUEUE_FILE="scripts/queue.txt"

echo "Watching $QUEUE_FILE every 1 second... (Ctrl+C to stop)"

while true; do
  # Pick first URL line (starts with http)
  url=$(grep -m1 '^https\?://' "$QUEUE_FILE" 2>/dev/null || true)

  if [[ -n "$url" ]]; then
    echo "[$(date '+%H:%M:%S')] Processing: $url"

    if claude -p "Use the skill /youtube-summarizer $url" --output-format stream-json --include-partial-messages --permission-mode acceptEdits --dangerously-skip-permissions 2>/dev/null | jq -r '
      if .type == "assistant" then
        .message.content[]? |
        if .type == "text" then .text
        elif .type == "tool_use" then
          (.input |
            if has("description") then .description
            elif has("file_path") then .file_path
            elif has("url") then .url
            elif has("pattern") then .pattern
            elif has("query") then .query
            elif has("command") then (.command | split("\n")[0] | .[0:80])
            else (to_entries[0] | "\(.key)=\(.value | tostring | .[0:60])")
            end
          ) as $summary |
          "🔧 \(.name): \($summary)"
        else empty end
      elif .type == "result" then "✅ Done"
      else empty end
    '; then
      # Remove the processed URL from the file
      grep -v "^${url}$" "$QUEUE_FILE" > "$QUEUE_FILE.tmp" && mv "$QUEUE_FILE.tmp" "$QUEUE_FILE"
      echo "[$(date '+%H:%M:%S')] Done: $url"
    else
      echo "[$(date '+%H:%M:%S')] Failed: $url — keeping in queue"
    fi
  fi

  sleep 1
done
