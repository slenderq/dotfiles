export MOZ_ENABLE_WAYLAND=1
export GDK_BACKEND=wayland 
export QT_QPA_PLATFORM=wayland
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CURRENT_DESKTOP=sway

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi
