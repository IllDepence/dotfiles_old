#!/bin/bash

# deletes NEFs where a JPG exists

find -type f -name "*.NEF" > nefs
f_count=`cat nefs | wc -l`

for (( i=1; i<=$f_count; i++ ))
do
    f_curr=`cat nefs | head -n $i | tail -n 1`
    f_jpg="${f_curr:0:-3}JPG"
    if [ -f "$f_jpg" ]
    then
        rm $f_curr
    fi
done

rm nefs
