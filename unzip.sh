#!/bin/bash
# mostly playing with shell scripting

# a list of directories to look in for
my_directories="*"

for i in $my_directories
    do
        # check if there are .gz files in the folder.
        count=`ls -1 $1/*.gz 2>/dev/null | wc -l`
        if [ $count == 0 ]
        then
            echo ".gz files not found in $i"
            continue
        fi

    # actually unzip!
    gunzip $i/*.gz
done

