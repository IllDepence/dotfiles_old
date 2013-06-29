#!/bin/sh
xrandr --output HDMI-0 --mode 1920x1080 --right-of LVDS
xrandr --output LVDS --off
xrandr --output HDMI-0 --primary
xrandr --output VGA-0 --mode 1680x1050 --right-of HDMI-0
