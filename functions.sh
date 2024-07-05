#!/bin/bash

# # Section of code that performs a particular task. Avoids repetition
# function function_name()
# {
#     #Code
# }

# function1()
# {
#     # Code
# }

# # Call the function
# function_name

### Examples ###
function test_shadow()
{
    if [  -e /etc/networks ]; then
        echo "Yes it exists" #ls -al | 
    else
        echo "The file does not exist."
    fi
}

test_shadow