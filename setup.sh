#!/usr/bin/bash
set -euxo

apt install fish neovim
pip install pyright

git clone https://github.com/qwjyh/dotfiles.git
cd dotfiles
./bin/install.sh

git clone https://github.com/qwjyh/dl_lecture_competition_pub.git
