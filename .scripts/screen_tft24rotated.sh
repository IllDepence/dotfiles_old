#!/bin/sh
xrandr --output VGA-0 --off
xrandr --output HDMI-0 --off
xrandr --output HDMI-0 --mode 1920x1080 --right-of LVDS --rotate right
xrandr --output LVDS --off
