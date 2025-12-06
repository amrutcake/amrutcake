#!/usr/bin/env bash
set -euo pipefail

# Build script for Netlify/GitHub Pages: expand env vars and copy assets.

mkdir -p dist
# Expand env vars into the HTML. MOBILENUMBER will be injected here.
if command -v envsubst >/dev/null 2>&1; then
  envsubst < index.html > dist/index.html
else
  echo "envsubst not found; copying index.html without substitutions" >&2
  cp index.html dist/index.html
fi

# Copy images if present
if [ -d images ]; then
  mkdir -p dist/images
  cp -R images/* dist/images/
fi
