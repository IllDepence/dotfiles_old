#!/bin/sh

off_str=`cat ~/.spectrwm.conf | grep 'region_padding = 0'`
is_off=${#off_str}

if [ "$is_off" -gt "0" ]
	then
	sed -i --follow-symlinks 's/region_padding = 0/region_padding = 20/' ~/.spectrwm.conf
	sed -i --follow-symlinks 's/tile_gap = 0/tile_gap = 20/' ~/.spectrwm.conf
else
	sed -i --follow-symlinks 's/region_padding = 20/region_padding = 0/' ~/.spectrwm.conf
	sed -i --follow-symlinks 's/tile_gap = 20/tile_gap = 0/' ~/.spectrwm.conf
fi

pkill -HUP spectrwm
