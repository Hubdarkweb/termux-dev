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

# Updating bin files

chmod +x ${TermuxDev}/.dev/bin/*
cp ${TermuxDev}/.dev/bin/* $PREFIX/bin
