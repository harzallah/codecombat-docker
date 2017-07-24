#!/bin/bash


if [ -d "/opt/codecombat/.git/" ]
then
  echo "Directory /opt/codecombat/.git/ exists. CodeCombat app already installed"
  exit 1
fi
cd /opt/
git clone https://github.com/codecombat/codecombat.git codecombat
cd codecombat
git remote add upstream https://github.com/codecombat/codecombat.git
echo "npm..."
npm install .
echo "bower..."
bower install --allow-root --quiet --config.interactive=false




