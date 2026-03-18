#!/usr/bin/env bash
set -euo pipefail

echo "[setup] starting"

python3 --version || true

if command -v apt-get >/dev/null 2>&1; then
  sudo apt-get update || true
  sudo apt-get install -y build-essential curl git python3-pip python3-venv || true
fi

if ! command -v uv >/dev/null 2>&1; then
  python3 -m pip install --user uv || true
  export PATH="$HOME/.local/bin:$PATH"
fi

if [ -f pyproject.toml ]; then
  uv sync || python3 -m pip install -e ".[dev]" || true
fi

chmod +x scripts/*.sh 2>/dev/null || true
chmod +x scripts/codex/*.sh 2>/dev/null || true

echo "[setup] done"