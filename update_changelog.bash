#!/bin/bash

TARGET_FILE="CHANGELOG.md"
NEW_CHANGES="$(oasdiff diff https://raw.githubusercontent.com/RallyHereInteractive/openapi-spec-environment/main/environment.openapi.json environment.openapi.json -f text)"
NEW_CHANGES="## Changes for $(date)"$'\n'"$NEW_CHANGES"
echo "$NEW_CHANGES" | cat - ${TARGET_FILE} > temp && mv temp ${TARGET_FILE}
