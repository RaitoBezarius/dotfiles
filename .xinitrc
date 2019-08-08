setxkbmap fr oss -option compose:rctrl
xset r rate 200 50

xrandr --dpi 125.37
xrdb -load $HOME/.Xresources
nitrogen --restore &
/usr/lib/notify-osd-customizable/notify-osd &

xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 200
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 6 7 4 5
xinput set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Speed" 0.95

# Enforce correct locales from the beginning:
# LC_ALL is unset since it overwites everything
unset LC_ALL
export LANG=fr_FR.UTF-8
export LC_MESSAGES=C

# Our terminal is termite
export TERMINAL=termite

fcitx &
# Enable core dumps in case something goes wrong
ulimit -c unlimited

# Start the colorscheme.
wal -t -i "$(< "${HOME}/.cache/wal/wal")"

exec i3 -V >> ~/i3log-$(date +'%F-%k-%M-%S') 2>&1
