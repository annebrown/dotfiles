#-------------------------------------------------------------------------------
#
# File:	$HOME/.dotfiles//bash/.bash_aliases
# Repo: https://github.com/annebrown/dotfiles.git
# Author: Anne Brown
#
# Purpose:	Dev Env Config
#
# Usage:
#	1. Clone repos to $HOME/.dotfiles & $HOME/.dotfiles-priv
#	2. $ stow -d $HOME/.dotfiles bash git hyper konsole vim code sh ...
#	3. $ stow -d $HOME/.dotfiles-priv git ssh sh ...
#  
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
#
# General
#
#-------------------------------------------------------------------------------
#--------------------------------------------------
# Editors
#--------------------------------------------------
export EDITOR='vim' # defaut editor

#--------------------------------------------------
#  Script Paths
#--------------------------------------------------
export  PATH=$PATH:$HOME/.dotfiles/sh:$HOME/.dotfiles-priv/sh 

#--------------------------------------------------
# General Aliases
#--------------------------------------------------
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -Al'

alias ping3='ping -c 3'
alias ping3g='ping -c 3 google.com'

# DISPLAY & DESKTOP 
alias envd="env|grep DISPLAY && env|grep DESKTOP"

#-------------------------------------------------------------------------------
#
# Terminals
#
#-------------------------------------------------------------------------------
# Terminal Titlebar Fmt: user@host: /path/to/pwd
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
alias devterm="konsole --layout $HOME/konsole-view-layout.json &"
# Hyper
function set-title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}
alias hterm="hyper&"

#-------------------------------------------------------------------------------
#
# Languages
#
#-------------------------------------------------------------------------------
#--------------------------------------------------
# Go
#--------------------------------------------------
export PATH=$PATH:/usr/local/go/bin

#--------------------------------------------------
# Python
#--------------------------------------------------
alias activate-venv="source .venv/bin/activate"

#-------------------------------------------------------------------------------
# 
# Public Projects
#
#-------------------------------------------------------------------------------
#--------------------------------------------------
# dotfiles & dotfiles-priv
#--------------------------------------------------
alias godots="cd $HOME/.dotfiles"
# VSCode workspace - .dotfiles & .dotfiles-priv
alias codedots="cd && code $HOME/.AllThedotfiles.code-workspace" 

#--------------------------------------------------
# ab.ca
#--------------------------------------------------
alias goab="cd $HOME/prod/ab/ab.ca"
alias codeab="goab && code ."
alias abserver="goab && pnpm dev"

#--------------------------------------------------
# ab.net
#--------------------------------------------------
# Not deployed
#alias ab.net-log="ssh admin@annebrown.net tail -f /var/log/httpd/error_log.1"

#--------------------------------------------------
# bd.com
#--------------------------------------------------
alias gobd="cd $HOME/prod/bd/bd.com"
alias codebd="gobd && code .&" 
alias bdserver="gobd && pnpm dev"

#--------------------------------------------------
# content-data (Headless CMS)
#--------------------------------------------------
alias goc="cd $HOME/prod/content-data/content-data.mc.ca"
alias codec="goc && code .&" 

#--------------------------------------------------
# Devy
#--------------------------------------------------
alias god="cd $HOME/prod/devy/devy"
alias coded="god && code ."
alias dserver="god && pnpm dev"

#--------------------------------------------------
# Gamma
#--------------------------------------------------
alias gog="cd $HOME/prod/gamma/gamma.ab.ca"
alias codeg="gog && code ."
alias gserver="gog && pnpm dev"

#--------------------------------------------------
# mc.ca -> See nuxt-cms-client
#--------------------------------------------------
# Repo - Not Currently Deployed 
# Apex Domain Site CI Repo:nuxt-cms-client
#alias gomc="cd $HOME/prod/mc/mc.ca"
#alias codemc="gomc && code ."
#alias mcserver="gomc && pnpm dev"

#--------------------------------------------------
# nuxt-cms-client
#-------------------------------------------------- 
alias gonc="cd $HOME/prod/nuxt-cms-client/nuxt-cms-client"
alias codenc="gonc && code ."
alias ncserver="gonc && pnpm dev"

#--------------------------------------------------
# Proto
#--------------------------------------------------
alias gop="cd $HOME/prod/proto/proto.ab.ca"
alias codep="gop && code ."
alias pserver="gop && pnpm dev"

#--------------------------------------------------
# stga
#--------------------------------------------------
alias gos="cd $HOME/prod/stga/stga"
alias codes="gop && code ."
alias sserver="gop && pnpm dev"

#-------------------------------------------------------------------------------
#
# PS1
#
#-------------------------------------------------------------------------------
#
# My Base: 	[\t] \u@\H:\w	->	[hh:mm:ss] anne@host:~ $
#
# \t -> 24-h timestamp  \u -> username    \H -> hostname    
# \w -> cwd    			\$ -> prompt
# 
# Start color scheme: \e[	
# Color: A;Bm   
# End color scheme: \e[m
#	
# A:	0; - regular     1; - bold    2; - dim		4; - underline     blank - background
#
# B: 	30 - black		31 - red		32 - green		33 - yellow
#		34 - blue		35 - purple		36 - cyan		37 - white
#
# backkup PS1="\e[2;34m[\\t]\e[m \e[0;35m\w/\e[m\n\e[2;34m\\u\[\e[m\]\e[2;36m@\e[m\[\e[2;32m\]$HOSTNAME\[\e[m\]\e[2;36m:\e[m\[\e[1;36m\]\e[0;35m $ \[\e[0m\]"
#
# Format: [\t] \u@\H: \w\n$
#
PS1="\e[0;34m[\\t] \e[0;34m\\u\[\e[m\]\e[0;36m@\e[m\[\e[0;32m\]$HOSTNAME\[\e[m\]\e[2;34m:\e[m \e[0;35m\w/\e[m\n\e[m\[\e[1;36m\]\e[0;35m$ \[\e[0m\]"

#--------------------------------------------------
# Bash visual Verif 
#--------------------------------------------------
DATESTR=`date +"%y-%m-%d %H:%M"` 
echo "============== bash $DATESTR" "==============" 
