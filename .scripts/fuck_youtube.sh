#!/bin/sh
sudo tor
link=`torify youtube-dl -g $1`
torify wget "${link}"
