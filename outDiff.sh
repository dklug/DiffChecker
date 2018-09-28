#!/bin/bash
for i in $(ls); do
    EXTENSION="${i##*.}"
    FILENAME="${i%.*}"
    if [ $EXTENSION = "out" ]
        then
            echo $i
            DIFFERENCE= diff $i ./lab3-results/$FILENAME.out
            echo $DIFFERENCE
            echo
            echo /===========================================================/
            echo
    fi
done