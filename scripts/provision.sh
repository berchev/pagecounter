#!/usr/bin/env bash

# Debug mode
set -x

# if gem redis is not installed, install it
gem list -i redis || gem install redis

# install redis tools
which redis-cli || apt-get install -y redis-tools
