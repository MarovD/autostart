#!/usr/local/bin/zsh

#wmctrl -s 1;
sleep 30;

firefox &;
xfce4-terminal --title='vifm' --execute 'vifm' &;

sleep 3;

wmctrl -r mozilla -t 0;
wmctrl -r 'vifm' -t 1;
wmctrl -r 'vifm' -b toggle,maximized_horz,maximized_vert;
