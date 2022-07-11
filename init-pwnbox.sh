#!/bin/bash

PREV_PWD=$(pwd)
WDIR="$HOME/my_data"

mkdir -p $WDIR
cd $WDIR

# get preconfigured user_init file
wget https://raw.githubusercontent.com/jd84/htb-pwnbox/master/user_init --backups=1
chmod +x user_init

# get Nerdfont
mkdir -p fonts
curl -fLo "fonts/DejaVuSansMono Nerd Font Complete.ttf" \
    https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete.ttf

# prepare home directory
mkdir -p home
cd home
wget https://raw.githubusercontent.com/jd84/htb-pwnbox/master/.bashrc --backups=1
wget https://raw.githubusercontent.com/jd84/htb-pwnbox/master/.bash_aliases --backups=1
wget https://raw.githubusercontent.com/jd84/htb-pwnbox/master/.tmux.conf --backups=1
wget https://raw.githubusercontent.com/jd84/htb-pwnbox/master/.base16-gruvbox-dark-hard.conf --backups=1

# get nvim config
mkdir -p .config/nvim
curl -fLo ".config/nvim/init.vim" https://raw.githubusercontent.com/jd84/htb-pwnbox/master/.config/nvim/init.vim

# get starship config
curl -fLo ".config/starship.toml" https://raw.githubusercontent.com/jd84/htb-pwnbox/master/.config/starship.toml


# create RSA keypair for persistence over SSH
mkdir -p .ssh
ssh-keygen -t rsa -f .ssh/id_rsa

cd $WDIR
wget https://raw.githubusercontent.com/jd84/htb-pwnbox/master/export-mate-terminal.sh --backups=1
wget https://raw.githubusercontent.com/jd84/htb-pwnbox/master/import-mate-terminal.sh --backups=1
chmod +x export-mate-terminal.sh
chmod +x import-mate-terminal.sh

# return to the previous working directory
cd $PREV_PWD
