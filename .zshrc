#!/bin/zsh

autoload -U promptinit && promptinit
autoload -U colors && colors

export EDITOR=emacs

export PS1="[$fg[blue]%n@%m$reset_color]:$fg[yellow]%~
%(?.%{$fg[green]%}.%{$fg[red]%})%#$reset_color "
export RPS1=""
