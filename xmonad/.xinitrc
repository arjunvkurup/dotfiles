xmodmap -e "pointer = 1 2 3 5 4"
xrdb -merge ~/.Xresources
xsetroot -solid gray
/home/arjunv/dotfiles/xrandr.sh
exec /usr/bin/xmonad
