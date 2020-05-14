#! /bin/bash

sed -i "s/hostname = [0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+/hostname = $(sed -n "s/^.*\(172\.[0-9]\+\.[0-9]\+\.[0-9]\+\).*$/\1/p" /etc/hosts)/g" /root/.config/mopidy/mopidy.conf
mopidy
