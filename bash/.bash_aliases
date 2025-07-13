# -- @/bash/.bash_aliases --
#-------------------------------------------------------------------------------
#
# File:	~/.dotfiles/bash/.bash_aliases
# GH Repo: annebrown/dotfiles
#
# Purpose:	Dev Env Config
#
# Usage:
#
#   gh repo clone annebrown/dotfiles .dotfiles
#   gh repo clone annebrown/dotfiles-priv .dotfiles-priv
#
#   stow -d ~/.dotfiles bash git devy sh ...
#   stow -d ~/.dotfiles-priv vim git code sh-priv ...
#  
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# Editors
#-------------------------------------------------------------------------------
export EDITOR='vim'

#-------------------------------------------------------------------------------
#  Paths
#-------------------------------------------------------------------------------
export PATH=$PATH:$HOME/sh:$HOME/sh-priv
PROD_PATH="$HOME/devy/prod"
PROJ_PATH="$HOME/devy/allez"
MODS_PATH="$HOME/devy/modules"
TEST_PATH="$HOME/devy/prod/testing"

#-------------------------------------------------------------------------------
# General
#-------------------------------------------------------------------------------
alias remindme="less $HOME/.dotfiles/bash/.bash_aliases | grep "
alias goprod="cd $PROD_PATH"
alias gomods="cd $MODS_PATH"
alias allez="cd $PROJ_PATH"
alias gotest="cd $TEST_PATH"

# ls
alias l='ls --group-directories-first -hF'
alias la='l -a'
alias ll='l -lh'
alias lla='l -alh'
alias ltree='l -ahR'
alias lltree='l -ahR'

#-------------------------------------------------------------------------------
# Network
#-------------------------------------------------------------------------------
alias ping3='ping -c 3'
alias ping3g='ping -c 3 google.com'

#-------------------------------------------------------------------------------
# Displays
#-------------------------------------------------------------------------------
# Multi-Monitor
alias ddisp='~/.screenlayout/ddisp.sh'
alias mdisp='~/.screenlayout/mdisp.sh'
# DISPLAY && DESKTOP env vars
alias envd="env|grep DISPLAY && env|grep DESKTOP"

#-------------------------------------------------------------------------------
# Terminals
#-------------------------------------------------------------------------------
# Titlebar Format: user@host: /path/to/pwd
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'

# Konsole
alias kterm="konsole &"
alias kterms="konsole  --separate --geometry 650x650+20-20 --profile aserver --display :0.0 &" # Server

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
# export PATH="$HOME/.gem/ruby/$(ruby -e "puts RUBY_VERSION.gsub(/\.\d$/, )")/bin:$PATH"

#-------------------------------------------------------------------------------
# Development
#-------------------------------------------------------------------------------
# Nuxt App Big Reset
alias nuxtbfr="rm -rf node_modules .nuxt .output pnpm-lock.yaml && pnpm store prune"
# Nuxt App Big Reset - Monorepo App
alias nuxtbfr-mono="rm -rf node_modules .nuxt .output ../../pnpm-lock.yaml && pnpm store prune"
# Vite Module Big Reset
alias vitebfr="rm -rf node_modules pnpm-lock.yaml dist .output .eslintcache .vite && pnpm store prune"
# Approve Builds
alias pab="pnpm approve-builds"
# Publish Public npm Module
alias pubpub="npm publish --access public"

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
# ab - annebrown.ca Apex Src - A
#-------------------------------------------------------------------------------
alias goa="cd $PROD_PATH/ezra/ezra/apps/ab-apex"
alias codea="codee"  # ezra Monorepo
alias aserver="goa && pnpm dev"
alias aservernocache="DISABLE_CONTENT_WATCH=true aserver"
#-------------------------------------------------------------------------------
# ab.net - annebrown.net (Not Deployed)
#-------------------------------------------------------------------------------
#Tail Apache Logs
#alias ab.net-log="ssh admin@annebrown.net tail -f /var/log/httpd/error_log.1"
#-------------------------------------------------------------------------------
# ang2n - Framework Comparison Project
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
alias goe="cd $PROD_PATH/ezra"
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
# nuxt3-fleet-pub - npm Module - Open-source, fleet-wide components - F
#-------------------------------------------------------------------------------
alias gof="cd $MODS_PATH/nuxt3-fleet-pub/"
alias codef="gof && code ."
alias rmf="rm -rf node_modules/'@annebrown.ca' node_modules/nuxt3-fleet-pub"
#-------------------------------------------------------------------------------
# gamma - Devy Platform - G
#-------------------------------------------------------------------------------
alias gog="cd $PROD_PATH/gamma/gamma"
alias codeg="gog && code ."
alias gserver="gog && pnpm dev"
alias gservernocache="DISABLE_CONTENT_WATCH=true gserver"
#-------------------------------------------------------------------------------
# issues - Monorepo - Bug Reproductions - I
#-------------------------------------------------------------------------------
alias goi="cd $PROD_PATH/issues/issues"
alias codei="goi && code ."
#-------------------------------------------------------------------------------
# kevin - Monorepo - K
#-------------------------------------------------------------------------------
alias gok="cd $PROD_PATH/kevin/kevin"
alias codek="gok && code ."
#-------------------------------------------------------------------------------
# mc.ca - misscommunication.ca Apex Src - M
#-------------------------------------------------------------------------------
alias gom="cd $PROD_PATH/mc.ca/mc.ca"
alias codem="gom && code ."
alias mserver="gom && pnpm dev"
alias gservernocache="DISABLE_CONTENT_WATCH=true gserver"
#-------------------------------------------------------------------------------
# navi-tools - N
#-------------------------------------------------------------------------------
alias gon="cd $TEST_PATH/navi-tools/navi-tools"
alias coden="gon && code ."
alias nserver="gon && pnpm dev"
#-------------------------------------------------------------------------------
# Nuxt CMS Client - Template - NC
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
# proto - Devy Platform - PROTO
#-------------------------------------------------------------------------------
alias goproto="cd $PROD_PATH/proto/proto.ab.ca"
alias codeproto="goproto && code ."
alias protoserver="goproto && pnpm dev"
alias protoservernocache="DISABLE_CONTENT_WATCH=true protoserver"
#-------------------------------------------------------------------------------
# docs-pub - CMS Client - PUB
#-------------------------------------------------------------------------------
alias gopub="cd $PROD_PATH/kevin/kevin/apps/docs-pub"
alias codepub="codek" # Kevin Monorepo
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
alias gos="cd $PROD_PATH/stga/stga"
alias codes="gos && code ."
alias sserver="gos && pnpm dev"
#-------------------------------------------------------------------------------
# nuxt3-component-testing - Test App - T
#-------------------------------------------------------------------------------
alias got="cd $TEST_PATH/nuxt3-component-testing"
alias codet="got && code ."
alias tserver="got && pnpm dev"
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
#PS1="\e[0;34m[\\t] \e[0;34m\\u\[\e[m\]\e[0;36m@\e[m\[\e[0;32m\]$HOSTNAME\[\e[m\]\e[2;34m:\e[m \e[0;35m\w/\e[m\n\e[m\[\e[1;36m\]\e[0;35m$ \[\e[0m\]"
#-------------------------------------------------------------------------------
# Bash Msg
#-------------------------------------------------------------------------------
DATESTR=`date +"%y-%m-%d %H:%M"` 
echo "============== bash $DATESTR" "==============" 
#<-------@/bash/.bash_aliases-------------------------------------------------->
