#!/bin/bash

echo "This is a simple file encrypter/decrypter"
echo "Please choose what you want to do"

choice="Encrypt Decrypt"

select option in $choice; do
    if [ $REPLY = 1 ]; then
        echo "You have selected encryption"
        echo "Please enter the filename"
        read file;
        gpg -c $file # group privacy guard tool
        echo "The file has been encrypted"
    
    else
        echo "You have selected decryption"
        echo "Please enter the filename"
        read file2;
        gpg -d $file2 # Important that youremember the passphrase.

    fi
done


    