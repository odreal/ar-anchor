#!/bin/sh

apt-get -y install docker.io
git clone https://github.com/xdspacelab/openvslam
cd openvslam
docker build -t openvslam-socket -f Dockerfile.socket .
cd viewer
docker build -t openvslam-server .
node index.js