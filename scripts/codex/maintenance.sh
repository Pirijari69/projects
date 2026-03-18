#!/usr/bin/env bash
set -euo pipefail

echo "[maintenance] starting"

export PATH="$HOME/.local/bin:$PATH"

if [ -f pyproject.toml ]; then
  uv sync || python3 -m pip install -e ".[dev]" || true
fi

echo "[maintenance] done"