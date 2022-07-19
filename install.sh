#!/bin/bash

echo "[*] This is gonna take a while"
sudo apt-get update && sudo apt-get upgrade

# setting up bash and vim configs
rm $HOME/.vimrc
rm $HOME/.bashrc
cp .vimrc $HOME/
cp .bashrc $HOME
echo "[*] Vim and Bash configs copied"

cd ; source .bashrc

# install i3wm, nitrogen, neofetch and compton
echo "[*] Installing i3wm , nitrogen and neofetch compton"
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

# install awesome-terminal-fonts for bumblebee
git clone https://github.com/gabrielelana/awesome-terminal-fonts.git
cd awesome-terminal-fonts/
./install.sh
cd

# install ly login manager
echo "[*] Installing ly login manager"
sudo apt install build-essential libpam0g-dev libxcb-xkb-dev
git clone --recurse-submodules https://github.com/nullgemm/ly
cd ly
make
sudo make install
sudo systemctl disable gdm.service
sudo systemctl enable ly.service

# install pavucontrol
echo "[*] Installing pavucontrol"
sudo apt install pavucontrol -y


echo "[*] Done.."

