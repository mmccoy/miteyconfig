if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export LANG=en_US.UTF-8

# only fools wouldn't do this ;-)
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='subl -n -w'
fi

# Home and End need to work
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line

# Global aliases
alias sourcez="source ~/.zshrc"
alias c="clear"


[[ -a ~/.alias ]] && source ~/.alias
[[ -a ~/.env ]] && source ~/.env
