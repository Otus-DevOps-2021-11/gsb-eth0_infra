#!/bin/bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
apt-get update -y
apt install -y mongodb-org
sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mongod.conf
systemctl start mongod
systemctl enable mongod

