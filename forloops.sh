#!/bin/bash

for NAMES in $(cat inventory_2024.csv); do 
    echo "the varieties are $NAMES"
done