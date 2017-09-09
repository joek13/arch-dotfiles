function wallpaper
	wal -i $argv; and sh ~/scripts/wal.sh
    rm ~/.wallpaper
    echo $argv >> ~/.wallpaper
end
