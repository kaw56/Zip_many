#!/bin/bash
# mostly playing with shell scripting

# a list of directories to look in for
my_directories="*"

for i in $my_directories
    do
        # check if there are .gz files in the folder. (list the files
        # ending in .gz in this directory, write this output to null
        # device so it doesn't look ugly, pipe to wordcount and get
        # number of lines and therefore number of .gz files)
        count=`ls -1 $1/*.gz 2>/dev/null | wc -l`
        if [ $count == 0 ]
        then
            echo ".gz files not found in $i"
            continue
        fi

    # actually unzip!
    gunzip $i/*.gz
done

