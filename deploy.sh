#!/bin/sh

apt-get update && apt-get -y upgrade
apt-get install git
touch work

node index.js