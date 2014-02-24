export GTK_IM_MODULE='uim'
export QT_IM_MODULE='uim'
uim-xim -engine=anthy &
export XMODIFIERS='@im=uim'

xmodmap ~/.Xmodmap
xbindkeys
PATH=$PATH:/home/tarek/.scripts/:/opt/android-sdk/tools/
setbg.sh
exec spectrwm
