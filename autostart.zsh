#!/usr/local/bin/zsh

sleep 20;

thunderbird &;
sleep 10;
wmctrl -r 'thunderbird' -t 1;

firefox &;
sleep 5;
wmctrl -r 'firefox' -t 1;

xfce4-terminal --title='vifm' --execute 'vifm' &;
sleep 5;
wmctrl -r 'vifm' -t 0
wmctrl -r 'vifm' -b toggle,maximized_horz,maximized_vert;

wmctrl -s 0;

