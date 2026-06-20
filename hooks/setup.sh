#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

chmod +x hooks/commit-msg hooks/prepare-commit-msg

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git init
  echo "已初始化 git 仓库。"
fi

git config core.hooksPath hooks
echo "已启用 git hooks: core.hooksPath=hooks"
echo "commit-msg hook 将拦截含工具署名的提交。"
