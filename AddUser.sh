#!/bin/bash

## Poositional Parameters. Allow you to customize the data being entered
echo "Execution of script:$0"
echo "Please enter the name of the user:$1"

# Add user
adduser --home /$1 $1

