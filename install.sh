#!/bin/bash

echo "Creating config directory..."
mkdir -p /etc/sshtun/

cp -v sshtun.conf /etc/sshtun
cp -v sshtun /usr/local/bin
chmod 755 /usr/local/bin/sshtun