# Fish shell script to run after running wal.
python3.6 ~/scripts/wal.py ~/.config/dunst/dunstrc.template ~/.config/dunst/dunstrc # replaces handlebar templates in dunst config
killall dunst # force dunst to reload config
notify-send "Done templating!" "Done replacing template files"
