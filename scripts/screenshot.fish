#!/usr/bin/fish
set dir $HOME/Pictures/Screenshots
set filename $dir/(date +"%T %F").png

maim $filename -u $argv

if test -e $filename
    xclip -selection clipboard -t image/png -i $filename
    notify-send "Screenshot Taken" "Saved in $dir" -i $filename
end
