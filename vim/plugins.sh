#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
#curl -sSf https://static.rust-lang.org/rustup.sh | sh
cd ~/.vim/bundle
git clone https://github.com/valloric/youcompleteme
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --racer-completer --tern-completer
cd ~/.vim/bundle
git clone https://github.com/altercation/vim-colors-solarized
git clone --depth=1 https://github.com/scrooloose/syntastic.git
git clone https://github.com/bling/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/raimondi/delimitmate
git clone https://github.com/scrooloose/nerdtree

echo "Please run :Helptags in vim to update settings."
