#!/bin/bash
apt-get update
apt-get -y install -y ruby-full ruby-bundler build-essential apt-transport-https ca-certificates
bundler -v
