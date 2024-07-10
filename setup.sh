#!/usr/bin/bash
set -euxo

apt install fish
pip install pyright

# neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
rm -rf /opt/nvim
tar -C /opt -xzf nvim-linux64.tar.gz
export PATH="$PATH:/opt/nvim-linux64/bin"

git clone https://github.com/qwjyh/dotfiles.git
cd dotfiles
./bin/install.sh

cd
git clone https://github.com/qwjyh/dl_lecture_competition_pub.git

# cd dl_lecture_competition_pub
# cd data
# curl "https://drive.google.com/file/d/1VRc_ERfP2OUY_t7ppkMRxn-ZFHc_6tux/view?usp=drive_link" --output train.json
# curl "https://drive.google.com/file/d/1vr8PnhaDbvZA0DJvz-f2i7qnci742F0V/view?usp=drive_link" --output valid.json
# curl "https://drive.google.com/file/d/1UxbZPqf-bdotLi4TH4RBIA_8263vKcMO/view?usp=drive_link" --output train.zip
# curl "https://drive.google.com/file/d/1uilLaTToJjE-cO--Qw9QWMk1oJylBFqf/view?usp=drive_link" --output valid.zip
