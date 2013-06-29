export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
xmodmap ~/.Xmodmap
xbindkeys
#exec awesome
PATH=$PATH:.scripts/
setbg.sh
exec spectrwm
