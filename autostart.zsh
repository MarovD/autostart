#!/usr/local/bin/zsh

sleep 15;

xfce4-terminal --title='vifm' --execute 'vifm' &;
sleep 3;
wmctrl -r vifm -t 0;
wmctrl -r vifm -b toggle,maximized_horz,maximized_vert;

thunderbird &;
sleep 3;
wmctrl -r thunderbird -t 1;

firefox &;
sleep 3;
wmctrl -r firefox -t 1;

# xfce4-terminal --title='cmus' --execute 'cmus' &;
# sleep 3;
# wmctrl -r cmus -t 7;
# wmctrl -r cmus -b toggle,maximized_horz,maximized_vert;

wmctrl -s 0;
