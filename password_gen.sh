#!/bin/bash

# openssl - toolkit used by transport layer to secure sockets.
# Simple password generator
echo "This is a simple password generator"
echo "Please enter the length of password: "
read PASS_LENGTH 

for p in $(seq 1 3); do
    openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done 
