#!/bin/bash

source ~/.termux-dev/env/config.sh

# Updating Termux Repositories

echo -e "Updating Termux Repositories..."
yes|pkg update && yes|pkg upgrade

# Updating node modules

echo -e "Updating Node Modules..."

while IFS= read -r module; do

  version=$(npm list -g ${module} --depth=0 | grep ${module} | awk -F '@' '{print $2}')

  if [[ "${version}" != "$(npm show ${module} version)" ]]; then
    echo -e "Updating ${module}..."
    npm install -g ${module}@latest
  fi

done < ${TermuxDev}/.dev/txt/node-modules.txt

# Updating NvChad

cd ~/.termux-dev/repo/termux-dev-repo
git fetch
local_commit=$(git rev-parse HEAD)
remote_commit=$(git rev-parse origin/main)

if [ "${local_commit}" != "${remote_commit}" ]; then
  echo -e "Updating NvChad..."
  git pull origin main
  cp -r ~/.termux-dev/repo/termux-dev-repo/install/nvchad/nvim ~/.config
fi

# Updating bin files

chmod +x ${TermuxDev}/.dev/bin/*
cp ${TermuxDev}/.dev/bin/* $PREFIX/bin

# Updating termux-dev repo.

cd ${TermuxDev} && git pull origin main
