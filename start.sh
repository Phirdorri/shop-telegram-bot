#!/bin/sh
set -ex

echo "Running installer..."
python3 installer.py --nointeract

echo "Starting bot in background..."
python3 src/main.py &

echo "Starting HTTP server on port ${PORT:-10000}..."
exec python3 -u -m http.server "${PORT:-10000}"
