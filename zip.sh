#!/bin/bash
# mostly playing with shell scripting

# a list of directories to look in for files to zip
my_directories=`ls -d */`


for i in $my_directories
    do
       # check if there are .fastq files in the folder.
        count=`ls -1 $i/*.fastq 2>/dev/null | wc -l`
        if [ $count != 0 ]
        then
            # run gzip
            gzip $i*.fastq
            echo "zipped $i*.fastq"
        else
            echo ".fastq files not found in $i"
        fi

done

