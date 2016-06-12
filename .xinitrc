setxkbmap fr oss c
xset r rate 200 50

xrdb -load $HOME/.Xresources
urxvtd -f -o -q &
nitrogen --restore &
