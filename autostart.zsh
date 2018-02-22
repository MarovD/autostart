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

wmctrl -r 'firefox' -t 5;
wmctrl -r 'vifm' -t 1;
wmctrl -r 'cmus' -t 6;
wmctrl -r 'thunderbird' -t 2;
wmctrl -s 5;

cmus-remote -v 60;

mixer vol 70;
mixer pcm 100;

cmus-remote -p;

