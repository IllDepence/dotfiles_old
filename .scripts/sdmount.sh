#!/bin/sh

for arg in "$@"
do
    if [ ${#arg} -eq "1" ]
        then
        echo "mounting /dev/sd${arg}1 to /mnt/sd${arg}1"
        sudo mount -t ntfs "/dev/sd${arg}1" "/mnt/sd${arg}1"
    elif [ ${#arg} -eq "2" ]
        then
        echo "mounting /dev/sd${arg} to /mnt/sd${arg}"
        sudo mount -t ntfs "/dev/sd${arg}" "/mnt/sd${arg}"
    else
        echo "unexpected parameter: ${arg}"
    fi
done
