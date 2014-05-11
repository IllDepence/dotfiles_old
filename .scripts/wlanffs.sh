#!/bin/sh

sudo netctl stop-all
while [ `sudo netctl status $1 | grep -Po 'Active: active' | wc -c` -ne "15" ]
do
echo "failed"
sudo netctl start $1
done
echo "done"
