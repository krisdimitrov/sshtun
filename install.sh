#!/bin/bash

echo "Creating config directory..."
mkdir -pv /etc/sshtun/

echo "Copying configuration file..."
cp -v sshtun.conf /etc/sshtun

echo "Copying binaries..."
cp -v sshtun /usr/local/bin

echo "Assigning execution permissions..."
chmod 755 /usr/local/bin/sshtun