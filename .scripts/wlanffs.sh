#!/bin/sh

while [ `sudo netctl status $1 | grep -Po 'Active: failed' | wc -c` -eq "15" ]
do
echo "failed"
sudo netctl start $1
done
echo "done"
