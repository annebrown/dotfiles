#<-------@/bash/.bash_aliases-------------------------------------------------->
#-------------------------------------------------------------------------------
#
# File:	$HOME/.dotfiles/bash/.bash_aliases
# GH Repo: annebrown/dotfiles
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

# Remind Me
alias aliases="less $HOME/.dotfiles/bash/.bash_aliases"

# ls
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -Al'

#-------------------------------------------------------------------------------
# Editors
#-------------------------------------------------------------------------------
export EDITOR='vim' # defaut editor

#-------------------------------------------------------------------------------
#  Paths
#-------------------------------------------------------------------------------
export PATH=$PATH:$HOME/.dotfiles/sh:$HOME/.dotfiles-priv/sh:$HOME/.dotfiles-priv/bin 
PROD_PATH="$HOME/devy/prod"
PRIV_PATH="$HOME/devy/proj"

#-------------------------------------------------------------------------------
# Network
#-------------------------------------------------------------------------------
alias ping3='ping -c 3'
alias ping3g='ping -c 3 google.com'

#-------------------------------------------------------------------------------
# Displays
#-------------------------------------------------------------------------------
# Multi-Monitor Layouts
alias ddisp='~/.screenlayout/dev-displays.sh'
alias mdisp="~/.screenlayout/mirror-displays.sh"
alias hdisp="~/.screenlayout/horiz-displays.sh"
alias wdisp="~/.screenlayout/winter-displays.sh"
# DISPLAY && DESKTOP 
alias envd="env|grep DISPLAY && env|grep DESKTOP"

#-------------------------------------------------------------------------------
# Terminals
#-------------------------------------------------------------------------------
# Titlebar Format: user@host: /path/to/pwd
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'

# Konsole
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

#-------------------------------------------------------------------------------
# Languages
#-------------------------------------------------------------------------------
# Go
export PATH=$PATH:/usr/local/go/bin

# Python
alias activate-venv="source .venv/bin/activate"

## Ruby
export PATH="$HOME/.gem/ruby/$(ruby -e "puts RUBY_VERSION.gsub(/\.\d$/, )")/bin:$PATH"

#------------------------------------------------------------------------------- 
#
# Production
#
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Dotfiles (.dotfiles and .dotfiles-priv) - Dev Env Config - DOTS
#-------------------------------------------------------------------------------
alias godots="cd $HOME/.dotfiles"
alias codedots="cd && code $HOME/.AllThedotfiles.code-workspace"

#-------------------------------------------------------------------------------
# ab - annebrown.ca Apex Src (Ezra Monorepo) - A
#-------------------------------------------------------------------------------
alias goa="cd $PROD_PATH/ezra/ezra/apps/ab-apex"
alias codea="codee"
alias aserver="goa && pnpm dev"
alias aservernocache="DISABLE_CONTENT_WATCH=true aserver"

#-------------------------------------------------------------------------------
# ab.net - annebrown.net (Not Deployed)
#-------------------------------------------------------------------------------
#Tail Apache Logs
#alias ab.net-log="ssh admin@annebrown.net tail -f /var/log/httpd/error_log.1"

#-------------------------------------------------------------------------------
# ang2n - SPA Framework Comparison
#-------------------------------------------------------------------------------
# Angular - AN
alias goan="cd $PROD_PATH/ang2n/an/an"
alias codean="goan && code ."
alias anserver="goan && pnpm start"
# Next.js - NE
alias gone="cd $PROD_PATH/ang2n/ne/ne"
alias codene="gone && code ."
alias neserver="gone && pnpm dev"
# Nuxt - NU
alias gonu="cd $PROD_PATH/ang2n/nu/nu"
alias codenu="gonu && code ."
alias nuserver="gonu && pnpm dev"

#-------------------------------------------------------------------------------
# bd.com - Browndomain.com Apex Src - B
#-------------------------------------------------------------------------------
alias gob="cd $PROD_PATH/bd/bd.com"
alias codeb="gob && code .&" 
alias bserver="gob && pnpm dev"
alias bservernocache="DISABLE_CONTENT_WATCH=true bserver"

#-------------------------------------------------------------------------------
# content-data - Headless CMS - C
#-------------------------------------------------------------------------------
alias goc="cd $PROD_PATH/content-data/content-data"
alias codec="goc && code .&" 
alias editc="goc && typora .&" 

#-------------------------------------------------------------------------------
# ezra - Monorepo - E
#-------------------------------------------------------------------------------
alias goe="cd $PROD_PATH/ezra/ezra"
alias codee="goe && code ezra.code-workspace"

#-------------------------------------------------------------------------------
# electron-app - Devy Platform - EA
#-------------------------------------------------------------------------------
alias goea="cd $PROD_PATH/electron/e000/e000"
alias codeea="goea && code ."
alias easerver="goe && pnpm run build && pnpm run start"

#-------------------------------------------------------------------------------
# electron-app-template - Desktop App Template - ET
#-------------------------------------------------------------------------------
alias goet="cd $PROD_PATH/electron-app-template/electron-app-template/electron-app-template"
alias codeet="goet && code ."
alias etserver="goet && pnpm run build && pnpm run start"

#-------------------------------------------------------------------------------
# gamma - Devy Platform - G
#-------------------------------------------------------------------------------
alias gog="cd $PROD_PATH/gamma/gamma.ab.ca"
alias codeg="gog && code ."
alias gserver="gog && pnpm dev"
alias gservernocache="DISABLE_CONTENT_WATCH=true gserver"

#-------------------------------------------------------------------------------
# kevin - Monorepo - K
#-------------------------------------------------------------------------------
alias gok="cd $PROD_PATH/kevin/kevin"
alias codek="gok && code ."

#-------------------------------------------------------------------------------
# mc.ca - misscommunication.ca Apex Src - M
#-------------------------------------------------------------------------------
alias gom="cd $PROD_PATH/mc/mc.ca"
alias codem="gom && code ."
alias mserver="gom && pnpm dev"
alias gservernocache="DISABLE_CONTENT_WATCH=true gserver"

#-------------------------------------------------------------------------------
# Nuxt - CMS Client - Template - NC
#-------------------------------------------------------------------------------
alias gonc="cd $PROD_PATH/nuxt-cms-client/nuxt-cms-client"
alias codenc="gonc && code ."
alias ncserver="gonc && pnpm dev"
alias ncservernocache="DISABLE_CONTENT_WATCH=true ncserver"

#-------------------------------------------------------------------------------
# docs-priv - Headless CMS - PRIV
#-------------------------------------------------------------------------------
alias gopriv="cd $PROD_PATH/docs-priv/docs-priv"
alias codepriv="gopriv && code ."

#-------------------------------------------------------------------------------
# issues - Monorepo - Bug Reproductions - I
#-------------------------------------------------------------------------------
alias goi="cd $PROD_PATH/issues/issues"
alias codei="goi && code ."

#-------------------------------------------------------------------------------
# proto - Devy Platform - PROTO
#-------------------------------------------------------------------------------
alias goproto="cd $PROD_PATH/proto/proto.ab.ca"
alias codeproto="goproto && code ."
alias protoserver="goproto && pnpm dev"
alias protoservernocache="DISABLE_CONTENT_WATCH=true protoserver"

#-------------------------------------------------------------------------------
# docs-pub - Monorepo (kevin) App Template - PUB
#-------------------------------------------------------------------------------
alias gopub="cd $PROD_PATH/kevin/kevin/apps/docs-pub"
alias codepub="codek"
alias pubserver="gopub && pnpm dev"
alias pubservernocache="DISABLE_CONTENT_WATCH=true pubserver"

#-------------------------------------------------------------------------------
# refactor - Refactor STGA - RS
#-------------------------------------------------------------------------------
alias gors="cd $PROD_PATH/refactor-stga/refactor-stga"
alias coders="gors && code ."
alias rsserver="gors && pnpm dev"

#-------------------------------------------------------------------------------
# stga - Save the Grove Again (local community initiative) - S
#-------------------------------------------------------------------------------
alias gos="cd $PROD_PATH/stga/stga.com"
alias codes="gos && code ."
alias sserver="gos && pnpm dev"

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
#-------------------------------------------------------------------------------
PS1="\e[0;34m[\\t] \e[0;34m\\u\[\e[m\]\e[0;36m@\e[m\[\e[0;32m\]$HOSTNAME\[\e[m\]\e[2;34m:\e[m \e[0;35m\w/\e[m\n\e[m\[\e[1;36m\]\e[0;35m$ \[\e[0m\]"

#-------------------------------------------------------------------------------
# Bash Visual Verif 
#-------------------------------------------------------------------------------
DATESTR=`date +"%y-%m-%d %H:%M"` 
echo "============== bash $DATESTR" "==============" 
#<-------@/bash/.bash_aliases-------------------------------------------------->