
#!/bin/bash

choice=$(printf "Lock\nLogout\nReboot\nShutdown" | \
  rofi -dmenu -p "Power" -theme ~/.config/rofi/powermenu.rasi)

case "$choice" in
  Lock) hyprlock ;;
  Logout) hyprctl dispatch exit ;;
  Reboot) systemctl reboot ;;
  Shutdown) systemctl poweroff ;;
esac

