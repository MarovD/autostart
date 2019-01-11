#!/usr/local/bin/zsh

thunderbird &;
firefox &;
konsole -e mc &;
#xfce4-terminal --maximize --command "vifm" -T "vifm";

sleep 60;

wmctrl -r 'thunderbird' -t 7;
wmctrl -r 'firefox' -t 4;
wmctrl -r 'mc' -t 1;

wmctrl -s 4;
