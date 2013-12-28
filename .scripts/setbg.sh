#!/bin/sh
l=${#1}
if [ "$l" -lt "1" ]
then
find ~/eigenedaten/bilder/wallpaper/1080x1920 -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |shuf -n1 -z | xargs -0 feh --bg-scale
else
find ~/eigenedaten/bilder/wallpaper/$1 -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |shuf -n1 -z | xargs -0 feh --bg-scale
fi
