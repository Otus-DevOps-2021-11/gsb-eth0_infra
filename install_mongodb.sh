#!/bin/bash
sudo apt-get update
sudo apt-get install -y mongodb-server apt-transport-https ca-certificates
sudo systemctl start mongod
sudo systemctl enable mongod

