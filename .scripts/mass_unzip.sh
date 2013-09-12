#!/bin/sh

x=`ls | grep .zip | wc -l`

while [ "$x" -gt "0" ]
do
a=`ls | grep .zip | head -n 1`
b=${a:0:(-4)}
mkdir "$b"
mv "$a" "$b"
cd "$b"
unzip "$a"
rm "$a"
cd ..
x=`ls | grep .zip | wc -l`
done
