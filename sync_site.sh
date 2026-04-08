#!/bin/zsh

set -euo pipefail

ROOT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"
cd "$ROOT_DIR"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "This folder is not a git repository: $ROOT_DIR"
  exit 1
fi

BRANCH="$(git branch --show-current)"
if [[ "$BRANCH" != "main" ]]; then
  echo "Current branch is '$BRANCH'. Please switch to 'main' before syncing."
  exit 1
fi

COMMIT_MSG="${1:-Update website $(date '+%Y-%m-%d %H:%M:%S')}"

echo "Fetching latest origin/main..."
git fetch origin main

echo "Staging local changes..."
git add -A

if git diff --cached --quiet; then
  echo "No new local changes to commit."
else
  echo "Creating commit: $COMMIT_MSG"
  git commit -m "$COMMIT_MSG"
fi

echo "Rebasing onto origin/main..."
git pull --rebase origin main

echo "Pushing to origin/main..."
git push origin main

echo
echo "Sync finished."
git log -1 --oneline
