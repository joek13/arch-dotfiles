function wallpaper
	wal -i $argv; and sh ~/scripts/wal.sh
    echo $argv >> ~/.wallpaper
end
