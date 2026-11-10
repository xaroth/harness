#!/usr/bin/env bash
. "$(dirname "$0")/_lib.sh"
# upstream re-releases under tags like v25.12.19-2026-02-06-03fffb2; pin plain vX.Y.Z only
gh_fetch "https://api.github.com/repos/google/flatbuffers/releases?per_page=30" \
  | jq -r '[.[] | select(.prerelease | not) | .tag_name | select(test("^v[0-9]+\\.[0-9]+\\.[0-9]+$"))][0] | ltrimstr("v")'
