# Uncomment to load xresources file
# xrdb -merge ~/.Xresources &

slstatus &
#dwmstatus 2>&1 >/dev/null &

xset s off &        # don't activate screensaver
xset -dpms &        # disable DPMS (Energy Star) features.
xset s noblank &    # don't blank the video device

# Uncomment and edit to set the wallpaper.
#exec feh --bg-fill /home/therealone/wallpapers/main.jpg &
# paperview /home/therealone/wallgif/1 20 &
xawp /home/therealone/wallpapers/wallgif/5/* &
mkfontscale "/usr/share/fonts/MesloLGS NF" &
mkfontdir "/usr/share/fonts/MesloLGS NF" &
xset +fp "/usr/share/fonts/MesloLGS NF" &
#exec picom --vsync --backend glx --unredir-if-possible &
xrdb -merge /home/therealone/.Xresources &
trayer --expand true --widthtype request --transparent true --alpha 255 --edge top --align right &
#xrandr -s 1920x1080 &
#sleep 1 &
# Saving a dwm log
exec dwm > /home/therealone/.dwm.log
