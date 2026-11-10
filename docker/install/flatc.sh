#!/usr/bin/env bash
set -euo pipefail
tmp="$(mktemp -d)"
curl -fsSL -o "$tmp/flatc.zip" \
  "https://github.com/google/flatbuffers/releases/download/v${FLATC_VERSION}/Linux.flatc.binary.g++-13.zip"
unzip -q "$tmp/flatc.zip" -d "$tmp"
install -m 0755 "$tmp/flatc" /usr/local/bin/flatc
rm -rf "$tmp"
flatc --version
