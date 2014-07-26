#!/bin/sh
xrandr --output LVDS --off
xrandr --output HDMI-0 --preferred --primary
xrandr --output VGA-0 --preferred --rotate right --right-of HDMI-0
