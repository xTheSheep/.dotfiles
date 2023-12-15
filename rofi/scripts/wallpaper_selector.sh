#!/bin/bash

# Use Rofi to select a file
selected_file=$(find ~/Wallpaper -type f | rofi -show dmenu -theme $HOME/.config/rofi/launchers/type-4/style-4.rasi -dmenu -p "Select a file:")
#selected_file=$(rofi -show filebrowser -only -files)

# Check if a file is selected
if [ -n "$selected_file" ]; then
    # Run your script with the selected file
    # echo $selected_file
    ~/.config/scripts/UpdateWallpaper.sh "$selected_file"
fi
