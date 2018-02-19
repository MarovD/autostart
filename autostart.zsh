#!/usr/local/bin/zsh

thunderbird &;
firefox &;
${0:a:h}/../scripts/file-manager.zsh &;

sleep 60;

wmctrl -r 'thunderbird' -t 3;
wmctrl -r 'firefox' -t 5;
wmctrl -r 'vifm' -t 1;

wmctrl -s 5;
