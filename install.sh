#!/bin/bash

git clone https://github.com/iikyc/dotfiles.git

ln -s /dotfiles/.bash_profile /.bash_profile
ln -s /dotfiles/.vimrc /.vimrc

echo "[+] Done.."
