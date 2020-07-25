#!/bin/bash
apt-get install wget curl  -y
wget -qO- https://get.docker.com/ | bash

systemctl start docker 
systemctl enable docker


curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
