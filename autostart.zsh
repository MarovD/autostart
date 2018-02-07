#!/usr/local/bin/zsh

if [ ! -d '/media/disk' ];
then
    mkdir '/media/disk';
fi;

if [ -c '/dev/da0p1' ];
then
    mount -t ext2fs '/dev/da0p1' '/media/disk'
fi;

firefox &;
thunderbird &;
${0:a:h}/../scripts/file-manager.zsh &;
${0:a:h}/../scripts/audio-player.zsh &;

sleep 60;

wmctrl -r 'firefox' -t 4;
wmctrl -r 'vifm' -t 0;
wmctrl -r 'cmus' -t 2;
wmctrl -r 'thunderbird' -t 3;

cmus-remote -v 60;
# wmctrl -r 'vifm' -b toggle,maximized_horz,maximized_vert;
wmctrl -s 4;

mixer vol 70;
mixer pcm 100;

cmus-remote -p;

