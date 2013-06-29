#!/bin/sh
youtube-dl -x --audio-format mp3 --audio-quality 0 "https://www.youtube.com/watch?v=${1}"
