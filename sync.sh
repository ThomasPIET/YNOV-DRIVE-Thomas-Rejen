#!/bin/bash
git pull origin master --recurse-submodules
git submodule update --remote --recursive --merge
git add YNOV-DRIVE-*
git commit -m "Auto-sync submodules vers master" || echo "Rien à commiter"
git push origin master
 