#!/usr/local/bin/zsh


thunderbird &;
firefox &;
xfce4-terminal \
    --title='vifm' \
    --command='vifm' \
    --working-directory='/usr/local/www/sites' &;

sleep 60;

wmctrl -r 'thunderbird' -t 2;
wmctrl -r 'firefox' -t 1;

wmctrl -r 'vifm' -t 0
wmctrl -r 'vifm' -b toggle,maximized_horz,maximized_vert;

wmctrl -s 0;

