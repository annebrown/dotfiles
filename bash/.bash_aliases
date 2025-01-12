#<-------@/bash/.bash_aliases-------------------------------------------------->
#-------------------------------------------------------------------------------
#
# File:	$HOME/.dotfiles/bash/.bash_aliases
# Repo: https://github.com/annebrown/dotfiles.git
# Author: Anne Brown
#
# Purpose:	Dev Env Config
#
# Usage:
#
#	1. Clone dotfile repos to ~/.dotfiles & ~/.dotfiles-priv
# 2. Stow:
#      stow -d ~/.dotfiles bash vim displays sh ...
#	     stow -d ~/.dotfiles-priv git code bin ...
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
#  Paths
#--------------------------------------------------
export PATH=$PATH:$HOME/.dotfiles/sh:$HOME/.dotfiles-priv/sh:$HOME/.dotfiles-priv/bin 
PROD_PATH="$HOME/devy/prod"
PRIV_PATH="$HOME/devy/proj"

#--------------------------------------------------
# General Aliases
#--------------------------------------------------
# Remind Me
alias aliases="less $HOME/.dotfiles/bash/.bash_aliases"

# ls
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -Al'

# Ntwk
alias ping3='ping -c 3'
alias ping3g='ping -c 3 google.com'

# DISPLAY && DESKTOP 
alias envd="env|grep DISPLAY && env|grep DESKTOP"

#-------------------------------------------------------------------------------
# Terminals
#-------------------------------------------------------------------------------

# Titlebar: user@host: /path/to/pwd
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'

alias kterm="konsole --layout $HOME/konsole-view-layout.json &"

# Hyper
function set-title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}
alias hterm="hyper&"

#--------------------------------------------------
# Multi-Monitor Layouts
#--------------------------------------------------
alias devdisplays='~/.screenlayout/dev-displays.sh'
alias mirrordisplays="~/.screenlayout/mirror-displays.sh"

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
# dotfiles & dotfiles-priv - Dev Env Config - DOTS
#--------------------------------------------------
alias godots="cd $HOME/.dotfiles"
# .dotfiles & .dotfiles-priv
alias codedots="cd && code $HOME/.AllThedotfiles.code-workspace"

#--------------------------------------------------
# ab.ca - Apex Src - A
#--------------------------------------------------
alias goa="cd $PROD_PATH/ab/ab.ca"
alias codea="goa && code ."
alias aserver="goa && pnpm dev"
alias aservernocache="DISABLE_CONTENT_WATCH=true aserver"

#--------------------------------------------------
# ab.net - Not Deployed
#--------------------------------------------------
# Tail Apache Logs
#alias ab.net-log="ssh admin@annebrown.net tail -f /var/log/httpd/error_log.1"

#--------------------------------------------------
# bd.com - Apex Src - B
#--------------------------------------------------
alias gob="cd $PROD_PATH/bd/bd.com"
alias codeb="gob && code .&" 
alias bserver="gob && pnpm dev"
alias bservernocache="DISABLE_CONTENT_WATCH=true bserver"

#--------------------------------------------------
# content-data - Headless CMS - C
#--------------------------------------------------
alias goc="cd $PROD_PATH/content-data/content-data"
alias codec="goc && code .&" 
alias editc="goc && typora .&" 

#--------------------------------------------------
# electron-app-template - Desktop App Template - ET
#--------------------------------------------------
alias goet="cd $PROD_PATH/electron-app-template/electron-app-template/electron-app-template"
alias codeet="goet && code ."
alias etserver="goet && pnpm run build && pnpm run start"

#--------------------------------------------------
# gamma - Devy Platform - G
#--------------------------------------------------
alias gog="cd $PROD_PATH/gamma/gamma.ab.ca"
alias codeg="gog && code ."
alias gserver="gog && pnpm dev"
alias gservernocache="DISABLE_CONTENT_WATCH=true gserver"

#--------------------------------------------------
# kevin - Monorepo - K
#--------------------------------------------------
alias gok="cd $PROD_PATH/kevin/kevin"
alias codek="gok && code ."

#--------------------------------------------------
# mc.ca - Apex Src - M
#--------------------------------------------------
alias gom="cd $PROD_PATH/mc/mc.ca"
alias codem="gom && code ."
alias mserver="gom && pnpm dev"
alias gservernocache="DISABLE_CONTENT_WATCH=true gserver"

#--------------------------------------------------
# Nuxt - CMS Client - Template - NC
#-------------------------------------------------- 
alias gonc="cd $PROD_PATH/nuxt-cms-client/nuxt-cms-client"
alias codenc="gonc && code ."
alias ncserver="gonc && pnpm dev"
alias ncservernocache="DISABLE_CONTENT_WATCH=true ncserver"

#--------------------------------------------------
# proto - Devy Platform - PROTO
#--------------------------------------------------
alias goproto="cd $PROD_PATH/proto/proto.ab.ca"
alias codeproto="goproto && code ."
alias protoserver="goproto && pnpm dev"
alias protoservernocache="DISABLE_CONTENT_WATCH=true protoserver"

#--------------------------------------------------
# stga - Local Community Greenspace Initiative - S
#--------------------------------------------------
alias gos="cd $PROD_PATH/stga/stga.com"
alias codes="gos && code ."
alias sserver="gos && pnpm dev"

#-------------------------------------------------------------------------------
# 
# Private Projects
#
#-------------------------------------------------------------------------------
#--------------------------------------------------
# ang2n - SPA Framework Comparison Apps
#--------------------------------------------------
# Angular - AN
alias goan="cd $PRIV_PATH/ang2n/an/an"
alias codean="goan && code ."
alias anserver="goan && pnpm start"
# Next.js - NE
alias gone="cd $PRIV_PATH/ang2n/ne/ne"
alias codene="gone && code ."
alias neserver="gone && pnpm dev"
# Nuxt - NU
alias gonu="cd $PRIV_PATH/ang2n/nu/nu"
alias codenu="gonu && code ."
alias nuserver="gonu && pnpm dev"

#--------------------------------------------------
# electron-app - Devy Platform - E
#--------------------------------------------------
alias goe="cd $PRIV_PATH/electron/e000/e000"
alias codee="goe && code ."
alias eserver="goe && pnpm run build && pnpm run start"

#--------------------------------------------------
# docs-priv - Priv Headless CMS - PRIV
#--------------------------------------------------
alias gopriv="cd $PRIV_PATH/docs-priv/docs-priv"
alias codepriv="gopriv && code ."
alias privserver="gopriv && pnpm dev"
alias privservernocache="DISABLE_CONTENT_WATCH=true privserver"

#--------------------------------------------------
# refactor - Refactor STGA - R
#--------------------------------------------------
alias gor="cd $PRIV_PATH/refactor/refactor"
alias coder="gor && code ."
alias rserver="gor && pnpm dev"

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

#-------------------------------------------------------------------------------
# Bash Visual Verif 
#-------------------------------------------------------------------------------
DATESTR=`date +"%y-%m-%d %H:%M"` 
echo "============== bash $DATESTR" "==============" 
#<-------@/bash/.bash_aliases-------------------------------------------------->