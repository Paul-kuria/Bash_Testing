#!/bin/bash

echo "Please enter the subnet: "
read SUBNET

# Range, use seq.
for ip in $(seq 1 254); do
    ping -c 1 $SUBNET.$ip
done