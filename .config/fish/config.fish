wal -rt &
alias vim=nvim
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
export BROWSER="firefox"
export EDITOR="nvim"
set -gx PATH /home/joe/.cargo/bin $PATH
set -gx PATH /home/joe/.local/bin $PATH
set -gx PATH /home/joe/scripts/ $PATH

#start x at login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        set_color blue; figlet -f slant (hostname); set_color normal
        exec startx -- -keeptty
    end
end
