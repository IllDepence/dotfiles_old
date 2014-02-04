#!/bin/sh
xrandr --output LVDS --off
xrandr --output HDMI-0 --preferred
xrandr --output VGA-0 --preferred --rotate right --left-of HDMI-0
