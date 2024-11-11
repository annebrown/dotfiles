#-------------------------------------------------------------------------------
#
# File:	$HOME/.dotfiles//bash/.bash_aliases
# Repo: https://github.com/annebrown/dotfiles.git
# Docs: https://docs.annebrown.ca/dev/projects#dotfiles-project
# Author: Anne Brown
#
# Purpose:	Dev Env Config
#
# Usage:
#	1. Clone repos to $HOME/.dotfiles & $HOME/.dotfiles-priv
#	2. $ stow -d $HOME/.dotfiles bash git hyper konsole vim code sh 
#	3. $ stow -d $HOME/.dotfiles-priv git ssh sh
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
histfilesize=5000


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
# Frameworks
#
#-------------------------------------------------------------------------------
#--------------------------------------------------
# Angular
#--------------------------------------------------
alias angularserver="ng serve"

#--------------------------------------------------
# Next.js
#--------------------------------------------------
alias nextserver="pnpm run dev"

#-------------------------------------------------------------------------------
# 
# Projects
#
#-------------------------------------------------------------------------------
#--------------------------------------------------
# dotfiles/dotfiles-priv Project
#--------------------------------------------------
alias godots="cd $HOME/.dotfiles"
# VSCode workspace - .dotfiles and .dotfiles-priv w contrast dark theme
alias codedots="cd && code $HOME/.AllThedotfiles.code-workspace" 

#--------------------------------------------------
# Headless Content Project
#--------------------------------------------------
alias gocontent="cd $HOME/prod/content-data/content-data.ab.ca"
alias codecontent="gocontent && code .&" 

#--------------------------------------------------
# Markdown Content - Template App Project
#--------------------------------------------------
alias gocontentapp="cd $HOME/prod/content-app/content-app.ab.ca"
alias codecontentapp="gocontentapp && code .&" 
alias contentappserver="gocontentapp && pnpm dev"

#--------------------------------------------------
# www.browndomain.com Project
#--------------------------------------------------
alias gobd="cd $HOME/prod/bd/bd.com"
alias codebd="gobd && code .&" 
alias bdserver="gobd && pnpm dev"

#--------------------------------------------------
# www.annebrown.ca Project
#--------------------------------------------------
alias goab="cd $HOME/prod/ab/ab.ca"
alias codeab="goab && code ."
alias abserver="goab && pnpm dev"

#--------------------------------------------------
# www.misscommunication.ca Project
#--------------------------------------------------
alias gomc="cd $HOME/prod/mc/mc.ca"
alias codemc="gomc && code ."
alias mcserver="gomc && pnpm dev"

#--------------------------------------------------
# Proto Project
#--------------------------------------------------
alias goproto="cd $HOME/prod/proto/proto.ab.ca"
alias codeproto="goproto && code ."
alias protoserver="goproto && pnpm dev"

# #--------------------------------------------------
# # annebrown.net - Not currently deployed
# #--------------------------------------------------
# 	alias ab.net-log="ssh admin@annebrown.net tail -f /var/log/httpd/error_log.1"

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
# PS1="\e[0;33m[\\t]\e[2;32m \u\[\e[m\]@\[\e[0;32m\]$HOSTNAME\[\e[m\]:\[\e[1;36m\]\w\[\e[0m\] \e[0;36m$ \[\e[0m\]"
# backup PS1="\e[0;33m[\\t]\e[2;32m \u\[\e[m\]@\[\e[1;34m\]$HOSTNAME\[\e[m\]:\[\e[0;36m\]\w\[\e[0m\] $ \[\e[0m\]"
# Removing cwd from PS1, Added status line (hyperline linux, hyper-statusline win) to Hyper Terminal instead
# backup PS1="\e[0;33m[\\t]\e[2;32m \u\[\e[m\]@\[\e[0;32m\]$HOSTNAME\[\e[m\]:\[\e[1;36m\]\e[0;36m $ \[\e[0m\]"
# Removing timestamp
# backup PS1="\e[0;33m\\u\[\e[m\]@\[\e[0;32m\]$HOSTNAME\[\e[m\]:\[\e[1;36m\]\e[0;36m $ \[\e[0m\]"
# Adding pwd before prompt line and putting timestamp back in
# backkup PS1="\e[2;34m[\\t]\e[m \e[0;35m\w/\e[m\n\e[2;34m\\u\[\e[m\]\e[2;36m@\e[m\[\e[2;32m\]$HOSTNAME\[\e[m\]\e[2;36m:\e[m\[\e[1;36m\]\e[0;35m $ \[\e[0m\]"
# Format: [\t] \u@\H: \w\n$
PS1="\e[0;34m[\\t] \e[0;34m\\u\[\e[m\]\e[0;36m@\e[m\[\e[0;32m\]$HOSTNAME\[\e[m\]\e[2;34m:\e[m \e[0;35m\w/\e[m\n\e[m\[\e[1;36m\]\e[0;35m$ \[\e[0m\]"

#--------------------------------------------------
# Bash visual Verif 
#--------------------------------------------------
DATESTR=`date +"%y-%m-%d %H:%M"` 
echo "============== bash $DATESTR" "==============" 
