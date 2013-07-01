#!/bin/bash
# mostly playing with shell scripting

# a list of directories to look in for
MY_DIRECTORIES="*"

for i in $MY_DIRECTORIES
    do
        # check if there are .gz files in the folder.
        ls -1 $i/*.gz
        if [ $? -eq 1 ]
        then
            echo ".gz files not found in $i"
            continue
        fi

    # actually unzip!
    gunzip $i/*.gz
done

