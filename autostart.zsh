#!/usr/local/bin/zsh

thunderbird &;
firefox &;
${0:a:h}/../scripts/file-manager.zsh &;
${0:a:h}/../scripts/audio-player.zsh &;

sleep 60;

wmctrl -r 'thunderbird' -t 2;
wmctrl -r 'firefox' -t 1;
wmctrl -r 'vifm' -t 0
