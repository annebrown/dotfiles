#--------------------------------------------------------------
#
# File:	~/.dotfiles//bash/.bash_aliases
# Repo: https://github.com/annebrown/dotfiles.git
# Docs: ~/prod/docsproj/docs/oses/linux/new-host-config/README.md
# Author: Anne Brown
#
# Purpose:	Dev Env Config
#
# Usage:
#	1. Clone repos to ~/.dotfiles & ~/.dotfiles-priv
#	2. $ stow -d ~/.dotfiles bash git hyper konsole vim code sh 
#	3. $ stow -d ~/.dotfiles-priv git ssh sh
#  
#--------------------------------------------------------------

#--------------------------------------------------
# Editors
#--------------------------------------------------
export EDITOR='vim' # defaut editor

#--------------------------------------------------
# Terminals
#--------------------------------------------------
# Terminal Title Fmt: user@host: /path/to/pwd
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'

# Usage: set-title title text
# Ref: https://askubuntu.com/questions/22413/how-to-change-gnome-terminal-title
function set-title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}

#--------------------------------------------------
#  Script Paths
#--------------------------------------------------
export  PATH=$PATH:~/.dotfiles/sh:~/.dotfiles-priv/sh 
export PATH=$PATH:/usr/local/go/bin

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
alias envd='env|grep DISPLAY && env|grep DESKTOP'

# Shortcuts
alias godocs="cd ~/prod/docsproj"
alias gohome="cd ~/prod/home"
alias goangular="cd ~/projects/angular"
alias goproj="cd ~/projects/angular" # Current Proj

#--------------------------------------------------
# VSCode Shortcuts
#--------------------------------------------------
alias codedots="code ~/.Allthedotfiles-priv.code-workspace"
alias codedocs="code ~/prod/docsproj/.docsproj.code-workspace"
alias codehome="code ~/prod/home/home.code-workspace"
alias codeangular="code ~/projects/angular/angular.code-workspace" 
alias codeproj="codeangular"

#-------------------------------------------------------------------------------
# docs-pub
#-------------------------------------------------------------------------------
alias activate-venv="cd ~/prod/docs-pub; source .venv/bin/activate"

#-------------------------------------------------------------------------------
# Dev Svr Shortcuts
#-------------------------------------------------------------------------------
alias docserver="konsole --profile docserver&" # MkDocs docs.annebrown.ca
alias angularab="konsole --profile angularab&" # Angular - annebrown.ca
alias nextbd="konsole --profile nextbd&" # Next.js - browndomain.com
alias nextpriv="konsole --profile nextpriv&" # Next.js - priv.browndomain.com

# #--------------------------------------------------
# # annebrown.net - currently not in use
# #--------------------------------------------------
# 	alias ab.net-log="ssh admin@annebrown.net tail -f /var/log/httpd/error_log.1"

#--------------------------------------------------
# perl
#--------------------------------------------------
	alias p.org-bash="ssh -X -l anneq -p perl.org"  
	alias perldocsvr="sudo ls; sudo perldoc-server --public &"


#--------------------------------------------------
# Devices
#-------------------------------------------------- 
	alias ssh-aphone-root="ssh -p 2222 root@aphone"
	alias ssh-atab-root="ssh -p 2222 root@atab"
	alias ssh-aserver="ssh -p 22 anne@aserver"
	alias ssh-achromebook=" ssh -p 22 anne@achromebook"

#--------------------------------------------------
# Devs
#--------------------------------------------------
	alias ssh-adev="ssh -p 2222 anne@adev"
	alias ssh-devy="ssh -p 22 anne@devy"
	alias ssh-bossy="ssh -p 22 anne@bossy"
	alias ssh-desky="ssh -p 22 anne@desky"
# 	alias ssh-anchor="ssh -p 2222 anne@anchor"

# #--------------------------------------------------
# # browndomain.com 
# #--------------------------------------------------
# 	alias b.com-mount="sshfs bh ~/mnt" 
# 	alias b.com-log="ssh bh tail -f /var/log/httpd/error_log.1 | grep 204.237.125.197"
# 	alias b.com-gitadd="ssh bh  'cd ~/cloud/www/WebApp; git add .;'"
# 	alias b.com-gitcommit="ssh bh 'cd ~/cloud/www/WebApp; git commit -m \"batch commit\";'"
# 	alias b.com-gitpull="ssh bh 'cd www/WebApp; git pull;'"
# 	alias b.com-gitall="b.comgitadd; b.comgitcommit; b.comgitpull;"
# 	alias b.com-start-svr="ssh bh 'cd www/WebApp; perl script/webapp_fastcgi.pl;'"

# 	# PHP
# 	if [ `hostname` = "box567.bluehost.com" ]; then
# 		alias php.ini-edit="cp public_html/php.ini \"public_html/php.ini-`date +%y-%m-%d`-00\" && vim public_html/php.ini"	
# 	fi

# #---------------------------------------
# # LAMP stack
# #-------------------------------------

## MySql
    # export VIMRUNTIME=/usr/share/vim/vim74
    # PATH=$PATH:$MY_REPOS/dotfiles/bash/sh:$MY_REPOS-PRIV/dotfiles-priv/bash/sh # Add sys admin scripts to PATH
    # export PATH
	#   alias mysqlstart="sudo /usr/local/mysql/support-files/mysql.server start"
	#   alias mysql="/usr/local/mysql/bin/mysql"
	#   alias mysqladmin="/usr/local/mysql/bin/mysqladmin"
	#

# #--------------------------------------------------	
# # ESSi host
# #--------------------------------------------------
# 	alias sshaws="ssh -i ~/.ssh/essi bitnami@aws-essi-prod-instance-0000"

#--------------------------------------------------
# Mobile App Dev
#--------------------------------------------------
# 
#	WSL2
	# if [ `hostname` = "alap" ] || [ `hostname` = "alap-wsl" ] || [ `hostname` = "aserver" ] || [ `hostname` = "anchor-wsl" ]; then
	# 	export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
	# 	export PATH=$PATH:$JAVA_HOME/bin
	# 	export ANDROID_HOME=~/Android
	# 	export PATH=$ANDROID_HOME/tools:$PATH
	# 	export PATH=$ANDROID_HOME/tools/bin:$PATH
	# 	export PATH=$ANDROID_HOME/platform-tools:$PATH	
	# 	export PATH="$PATH:`pwd`/dev/flutter/bin"
	# 	alias connectaphone="adb connect 912.168.2.12:5555"	
	# 	cd # WSL2 opens in wrong dir.  Bad json
	# fi

#--------------------------------------------------	
# Hosts OSes
#--------------------------------------------------
# # Win11/WSL2
	# if [ `hostname`="adev" ] ||[ `hostname`="alap-wsl" ] || [ `hostname` = "alap" ] || [ `hostname`="aserver" ] || [ `hostname`="anchor-wsl" ]; then
		
		# alias rdpdesktop="~/repos/my-conf/win11/wsl2/desktop.sh" # Prepare xfce4 desktop for RDP Remote Access
		# alias kdedesktop="~/repos/my-conf/win11/wsl2/desktopkde.sh" # Start KDE Desktop
		# export WAYLAND_DISPLAY=':1.0'
		# export DISPLAY=':2.0'
		# # Configure Intel compilers for wsl
			# if [ `hostname` = "alap" ]; then
				# source /opt/intel/oneapi/setvars.sh
			# fi
	# fi

# # iOS
	# if [ `hostname` = "aiPad" ] || [ `hostname` = "aiphone" ]; then
	# 	alias gocloud="cd ~/Documents/cloud"
	# fi
	
# # xOS
# 	if [ `hostname` = "king" ]; then	
# 		# exports - king
# 			export EDITOR="~/sh/mvim"	# make MacVim the default editor
# 		# aliases - apps - owncloud
# 			alias owncloudstart="/Applications/ownCloud.app/Contents/MacOS/ownCloud --logwindow"
# 		# aliases - apps - log
# 			alias logs="open /Applications/Utilities/Console.app"
# 		# aliases - apps - vim gui
# 			alias mvim="~/sh/mvim"
# 			alias smvim="sudo /Users/Anne/sh/mvim" # sudo mvim
# 		# aliases - paths on king	
# 			alias gowebapp="cd ~/Sites/WebApp"
# 			alias gowebappt="cd ~/Sites/WebAppTest"
# 			alias godropbox="cd /Users/Anne/Dropbox"
# 			alias clipboard="godropbox && mvim Clipboard.txt"
# 			alias gocloud="cd /Users/Anne/cloud"
# 	fi

#--------------------------------------------------
#
# PS1
#
#--------------------------------------------------
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
# Visual Verif that .bash_aliases loaded 
#--------------------------------------------------
DATESTR=`date +"%y-%m-%d %H:%M"` 
echo "============== bash $DATESTR" "==============" 



 
