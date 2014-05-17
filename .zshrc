# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt HIST_IGNORE_SPACE
unsetopt autocd beep extendedglob
bindkey -v
bindkey '\e[3~' delete-char
bindkey "^[Od" backward-word  # control-left
bindkey "^[Oc" forward-word   # control-right
bindkey '^R' history-incremental-search-backward
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tarek/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias df='df -h'
alias fucking='sudo'
#alias chromium='chromium --proxy-server="socks5://127.0.0.1:9999"'
alias chromium='chromium --enable-webgl --ignore-gpu-blacklist'
mvcd() {
    mv $1 $2;cd $2
    }
alias unzip-jp='UNZIP="-O cp932" unzip -x '
alias nano=vim
alias edit=vim
alias emacs=vim

PROMPT="[%n@%m %1~]$ "

export LS_COLORS='di=1:fi=00:ex=96'
export PATH=$PATH:/home/tarek/.scripts:/home/tarek/.scripts/3rd_party:
