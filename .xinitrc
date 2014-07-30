export GTK_IM_MODULE='uim'
export QT_IM_MODULE='uim'
uim-xim -engine=anthy &
export XMODIFIERS='@im=uim'

xmodmap ~/.Xmodmap
xbindkeys
setbg.sh
#exec spectrwm
exec i3
