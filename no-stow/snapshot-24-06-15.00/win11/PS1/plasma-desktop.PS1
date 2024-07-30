
echo     plasma-desktop.bat


bash.exe run "if [ -z \"$(pidof plasmashell)\" ]; then cd ~ ; export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0 ; setxkbmap us,ru -option grp:ctrl_shift_toggle ; export LIBGL_ALWAYS_INDIRECT=1 ; export PULSE_SERVER=tcp:$(grep nameserver /etc/resolv.conf | awk '{print $2}') ; sudo /etc/init.d/dbus start &> /dev/null ; sudo service ssh start ; sudo service xrdp start ; plasmashell ; pkill '(gpg|ssh)-agent' ; fi;"

