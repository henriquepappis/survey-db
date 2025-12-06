#!/usr/bin/env bash
set -euo pipefail

# Só constrói a imagem usando o builder remoto do Fly.io.
flyctl deploy --config fly.toml --remote-only --build-only "$@"
