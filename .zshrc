# gpgsign
export GPG_TTY=$(tty)

# Completions
autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit

# asdf
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

# Keybindings
bindkey -e # use emacs preset

# Aliases
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gbb="git for-each-ref refs/heads/ --format='%(HEAD) %(color:red)%(objectname:short)%(color:reset) %(color:yellow)(%(color:reset)%(color:bold green)%(refname:short)%(color:reset)%(color:yellow))%(color:reset) %(contents:subject) %(color:dim white)- %(authorname)%(color:reset) (%(color:cyan)%(committerdate:relative)%(color:reset))'"
alias gc="git commit"
alias gca="git commit --amend"
alias gco="git checkout"
alias gd="git diff"
alias gdc="git diff --cached"
alias gl="git log"
alias gll="git log --graph --abbrev-commit --all --decorate --format='%C(red)%h%C(reset) %s %C(dim white)- %an%C(reset) %C(cyan)(%ar)%C(reset)%C(auto)%d%C(reset)'"
alias gr="git reset"
alias grb="git rebase"
alias gs="git status"
alias gsh="git show"
alias gst="git stash"

# Prompt
autoload -U colors && colors
setopt prompt_subst
local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"

export PROMPT='
${smiley}%{$reset_color%} %~
'
export PS1=$PROMPT
export RPROMPT='%{$fg[white]%} $(~/dotfiles/bin/git-cwd-info)%{$reset_color%}'
