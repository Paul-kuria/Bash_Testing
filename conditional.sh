#!/bin/bash 
echo "Please enter your username: "
read FNAME

if [ "$FNAME" = "Rooster" ];
then
    echo "Its not the plane mav, its the pilot"
else
    echo "Talk to me Goose"
fi