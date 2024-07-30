#--------------------------------------------------
# Filename:	$MY_REPOS/my-conf/win11/wsl2/desktop.sh
# Repo:     git@github.com:annebrown/my-conf.git
# Docs:      $MY_REPOS/my-conf/win11/README.md
# Author:	Anne Brown
# Purpase:	Open an Xfce Desktop Session on WINHOST via RDP.
# 
#--------------------------------------------------
# Details:
#--------------------------------------------------  
#	- Set DISPLAY env for Windows Remote Desktop (RDP)
#	- Start xfce4 Desktop Sessoin
#  	- Start RDP to allow connection from Windows Remote Desktop 
#
#--------------------------------------------------

# #  Commands for setting up xfce GUI via RD
export DISPLAY=:0
startxfce4
sudo /etc/init.d/xrdp start