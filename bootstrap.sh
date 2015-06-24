#!/bin/bash

# Dev Tools
# =======================================
echo "Developer Tools install"
apt-get -y install curl git python-software-properties
apt-get -y install gcc
apt-get -y update


# Folder Sync
# =======================================
echo "Folder Sync"
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

# Node & NPM
# =======================================
echo "Node"
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-add-repository ppa:chris-lea/node.js
apt-get install -y nodejs
apt-get install -y build-essential

# Mongo DB
# =======================================
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
apt-get update
apt-get install -y mongodb-org

# NPM installs
# =======================================
sudo npm install -g bower grunt-cli yo generator-meanjs
sudo npm cache clean