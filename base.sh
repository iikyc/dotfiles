#!/bin/bash

cd

# install i3wm and nitrogen
echo "[*] Installing i3wm , nitrogen and neofetch"
sudo apt install --yes i3 nitrogen neofetch

# install bumblebee bar
echo "[*] Installing bumblebee bar"
git clone git://github.com/tobi-wan-kenobi/bumblebee-status

# install pip3 for bumblebee bar module dependencies
echo "[*] Installing pip3"
sudo apt install python3-pip

# install bumblebee module dependencies with pip3
pip3 install psutil
pip3 install netifaces

echo "[*] Done.."
