export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(common-aliases compleat zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export PATH=CHANGEME

PROMPT="[%{$fg[red]%}%n%{$reset_color%}@%{$fg[cyan]%}%m %{$fg[white]%}%B%1~%b]%# "
export EDITOR=vim
