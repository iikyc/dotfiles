#!/bin/bash

cd
rm .bash_profile
rm .vimrc

ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.vimrc ~/.vimrc

echo "[+] Done.."
