# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
unsetopt autocd beep extendedglob
bindkey -v
bindkey '\e[3~' delete-char
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
PROMPT="[%n@%m %1~]$ "

bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

export LS_COLORS='di=1:fi=00:ex=96'
