#!/bin/sh
mv ~/.vimrc ~/.vimrc_backup
mv ~/.config/i3/config ~/.config/i3/config_backup
mv ~/.zshrc ~/.zshrc_backup
mv ~/.i3status.conf ~/.i3status.conf.backup
cp vim/.vimrc ~/.vimrc
cp i3/config ~/.config/i3/config
cp i3/mpdcurrent.sh ~/.config/i3/mpdcurrent.sh
cp i3/.i3status.conf ~/.i3status.conf
cp zsh/.zshrc ~/.zshrc
cp -r bin ~/bin
sudo chmod +x ~/bin/*

