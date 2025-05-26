#!/usr/bin/env bash
set -euo pipefail

echo "[INFO] Requesting JSON from httpbin.org..."
response=$(curl -s https://httpbin.org/json)
echo "[INFO] Response: $response"

# I'm not 100% sure if the "title of the slideshow" means the JSON's title field, or the slideshow > slides > title, so I'm returning both
title=$(echo "$response" | jq -r '.slideshow.title')
echo "[RESULT] Slideshow title: \"$title\""

echo "[RESULT] Slide titles:"
echo "$response" | jq -r '.slideshow.slides[]?.title // "[no title]"'

echo "[INFO] Done. Sleeping to keep container alive..."
tail -f /dev/null
