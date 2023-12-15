
echo -e "preload = $1\nwallpaper = ,$1" > ~/.config/hypr/hyprpaper.conf
wal -q -i $1
echo ""
echo "bash-colors: -UPDATED- "

#source ~/.config/scripts/GenerateChromeTheme.sh
#killall chromium
#chromium --load-extension=/home/sheep/.config/scripts/Pywal 1>/dev/null &

cp ~/.cache/wal/colors-waybar.css ~/.config/waybar/colors.css
cp ~/.cache/wal/colors-waybar.css ~/.config/wlogout/colors.css
echo "waybar: -UPDATED-"

killall waybar
sleep 0.2
waybar -l off 2>/dev/null &
echo "waybar: -RELOADED-"

killall hyprpaper
sleep 0.2
hyprpaper 1>/dev/null &
echo "hyprpaper: -RELOADED-"
echo ""
echo "||===========SUCCESS===========||"
echo ""

