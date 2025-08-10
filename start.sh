#!/bin/sh
set -e

echo "Running installer via Python..."
python3 installer.py --nointeract

echo "Starting bot in background..."
python3 src/main.py &

echo "Starting HTTP server..."
exec python3 -u -m http.server "${PORT:-10000}"
