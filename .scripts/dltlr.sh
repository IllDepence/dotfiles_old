#!/bin/bash

#echo "url:"
#read url

url=$1

if [ "${url:(-10)}" == "h1080p.mov" ]
then
wget --user-agent="QuickTime/7.6.2 (qtver=7.6.2;os=Windows NT 5.1Service Pack 3)" $url
fi

if [ "${url:(-10)}" == "_1080p.mov" ]
then
len=${#url}
sub=$(($len-10))
wget --user-agent="QuickTime/7.6.2 (qtver=7.6.2;os=Windows NT 5.1Service Pack 3)" ${url:0:$sub}_h1080p.mov
fi
