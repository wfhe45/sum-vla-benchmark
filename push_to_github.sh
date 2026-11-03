#!/usr/bin/env bash
set -e

# ==============================================================================
# One-click Push Script for US-VLA Benchmark Demo
# ==============================================================================

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO_DIR"

echo "=========================================================="
echo "  Deploying US-VLA Benchmark Demo to GitHub"
echo "=========================================================="
echo "Directory: $REPO_DIR"

# 1. Check or ask for remote URL
REMOTE_URL="$1"
if [ -z "$REMOTE_URL" ]; then
    echo ""
    echo "Please enter your GitHub repository URL."
    echo "Example: https://github.com/wfhe45/us-vla-benchmark.git"
    echo "     or: git@github.com:wfhe45/us-vla-benchmark.git"
    read -p "Repository URL: " REMOTE_URL
fi

if [ -z "$REMOTE_URL" ]; then
    echo "[Error] Repository URL cannot be empty. Exiting."
    exit 1
fi

# 2. Initialize git if not already initialized
if [ ! -d ".git" ]; then
    echo "[1/4] Initializing git repository..."
    git init -b main
else
    echo "[1/4] Git repository already initialized."
    git checkout -B main
fi

# 3. Add and commit all files
echo "[2/4] Staging files (HTML pages, 16 videos, posters, README)..."
git add .

echo "[3/4] Committing..."
git commit -m "feat: initial commit of US-VLA & SonATA closed-loop video benchmark and demo pages" || echo "Already committed."

# 4. Set remote and push
echo "[4/4] Setting remote origin to $REMOTE_URL..."
if git remote | grep -q "^origin$"; then
    git remote set-url origin "$REMOTE_URL"
else
    git remote add origin "$REMOTE_URL"
fi

echo "Pushing to GitHub (main branch)..."
git push -u origin main

echo ""
echo "=========================================================="
echo "  SUCCESS! Repository successfully pushed to GitHub!"
echo "=========================================================="
echo ""
echo "Next step: Enable GitHub Pages to view online:"
echo "1. Open your repository on GitHub."
echo "2. Go to 'Settings' -> 'Pages'."
echo "3. Under 'Branch', select 'main' / '(root)', and click 'Save'."
echo "4. Your live demo will be accessible worldwide at:"
echo "   https://<your-username>.github.io/<repo-name>/"
echo "=========================================================="
