#!/bin/bash

source ~/.termux-dev/env/config.sh

# Input branch

echo -e -n "branch > "
read -r branch

# Add all files

git pull origin ${branch}
git branch -m ${branch}
git add .
git status

# Input commit

echo -e -n "commit > "
read -r commit

# Upload to branch

git commit -m "${commit}"
git push origin ${branch}
