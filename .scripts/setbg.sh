#!/bin/sh
find ~/eigenedaten/bilder/wallpaper/1920x1080/set -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |shuf -n1 -z | xargs -0 feh --bg-scale
