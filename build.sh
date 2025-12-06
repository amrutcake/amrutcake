#!/usr/bin/env bash
set -euo pipefail

# Generate config.js with env vars for client-side injection on Netlify
{
  echo "window.AMRUT_CONFIG = {"
  echo "  MOBILENUMBER: '${MOBILENUMBER:-}',"
  echo "};"
} > config.js

echo "✓ Generated config.js with MOBILENUMBER from environment"
