#!/bin/zsh
cd -- "$(dirname -- "$0")"
if ! command -v npm >/dev/null 2>&1; then
  echo 'Node.js is needed to open this project. Install Node.js, then try again.'
  read -r '?Press Return to close.'
  exit 1
fi
if [ ! -d node_modules ]; then
  npm install --cache "${TMPDIR:-/tmp}/moneytms-npm-cache" || exit 1
fi
npm run dev -- --open
