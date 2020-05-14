#! /bin/sh



apt-get update
apt-get apt-utils
apt-get install -y python
apt-get install -y python-pip
apt-get install -y wget
apt-get install -y gnupg
apt-get install -y gstreamer1.0-alsa
apt-get install -y gstreamer1.0-plugins-bad
apt-get install -y gstreamer1.0-plugins-good
wget -q -O - https://apt.mopidy.com/mopidy.gpg | apt-key add -
wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/buster.list
apt-get install -y mopidy
python -m pip install Mopidy-MusicBox-Webclient
