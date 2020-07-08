#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"

run "blueberry-tray"
run "nm-applet"
run "pasystray"
run "compton"  #is in rc.Lua
run "nextcloud"
run "xfce4-power-manager"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
run "nitrogen --restore"
#run "caffeine"
#run "/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=syncthing-gtk me.kozec.syncthingtk"
#run "xfce4-panel"
#run "xfce4-weather-plugin"
#run "numlockx on"
#run "volumeicon"
#run "mintupdate-launcher"
#run "conky -c $HOME/.config/awesome/system-overview"
#run applications from startup
#run "firefox"
#run "atom"
#run "dropbox"
#run "insync start"
#run "spotify"
