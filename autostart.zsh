#!/usr/local/bin/zsh

if [ -f '~/.ssh/git_rsa' ];
then
    ssh-add ~/.ssh/git_rsa;
fi;

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
${0:a:h}/../scripts/file-manager.zsh;

sleep 40;

wmctrl -r 'thunderbird' -t 0;
wmctrl -r 'firefox' -t 0;
wmctrl -r 'vifm' -t 1;
# wmctrl -r 'vifm' -b toggle,maximized_horz,maximized_vert;
wmctrl -s 1;
