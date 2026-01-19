#!/bin/bash
set -e
git pull origin master --recurse-submodules
git submodule update --init --remote --recursive --merge
git add YNOV-DRIVE-* .gitmodules || true
if git diff --staged --quiet; then
    echo "Aucun changement à commiter"
else
    git commit -m "Auto-sync submodules vers main/latest"
fi
git push origin master
