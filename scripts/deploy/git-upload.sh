#!/bin/bash
# This script adds, commits, and pushes changes to GitHub.
# Usage: ./git-upload.sh "commit message"

if [ -z "$1" ]; then
  echo "❌ Commit message is required."
  echo "Usage: $0 \"commit message\""
  exit 1
fi

COMMIT_MSG="$1"

# Add all changes
git add .

# Commit with the provided message
git commit -m "$COMMIT_MSG"

# Push to the current branch
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
git push origin "$CURRENT_BRANCH"

echo "✅ Changes pushed to GitHub on branch $CURRENT_BRANCH."
