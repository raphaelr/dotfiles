export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(common-aliases compleat zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source .rvm/scripts/rvm

export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
export EDITOR=vim

PROMPT="[%{$fg[red]%}%n%{$reset_color%}@%{$fg[cyan]%}%m %{$fg[white]%}%B%1~%b]%# "

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
        man "$@"
}
