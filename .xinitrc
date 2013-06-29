export GTK_IM_MODULE='uim'
export QT_IM_MODULE='uim'
#uim-xim &
export XMODIFIERS='@im=uim'
#export GTK_IM_MODULE=xim
#export QT_IM_MODULE=xim
xmodmap ~/.Xmodmap
xbindkeys
#exec awesome
PATH=$PATH:/home/tarek/.scripts/
setbg.sh
exec spectrwm
