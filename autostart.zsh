#!/usr/local/bin/zsh

#wmctrl -s 1;
# sleep 10;
if [ ! -d '/media/disk' ];
then
    mkdir '/media/disk';
fi;

if [ -c '/dev/diskid/DISK-NA8CW7V7p1' ];
then
    mount -t ext2fs '/dev/da0p1' '/media/disk'
fi;

firefox &;
xfce4-terminal --title='vifm' --execute 'vifm' &;

sleep 40;

wmctrl -r mozilla -t 0;
wmctrl -r 'vifm' -t 1;
wmctrl -r 'vifm' -b toggle,maximized_horz,maximized_vert;
