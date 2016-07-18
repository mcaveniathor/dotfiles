#!/bin/sh
mv ~/.vimrc ~/.vimrc_backup
mv ~/.config/i3/config ~/.config/i3/config_backup
mv ~/.zshrc ~/.zshrc_backup
mv ~/.i3status.conf ~/.i3status.conf.backup
cp .vimrc ~/.vimrc
cp config ~/.config/i3/config
cp .i3status.conf ~/.i3status.conf
cp .zshrc ~/.zshrc
