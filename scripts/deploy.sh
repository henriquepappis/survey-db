#!/usr/bin/env bash
set -euo pipefail

# Sobe a imagem e ativa a release no Fly.io.
flyctl deploy --config fly.toml --remote-only "$@"
