#!/bin/bash
# -*- ENCODING: UTF-8 -*-
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt install docker-ce -y
apt-cache policy docker-ce
