#!/bin/bash # GNU AGPLv3 File          	

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install npm -y
sudo apt-get install nodejs -y
sudo npm install @angular/cli
################################
#     git
############################
sudo apt-get install uqlitebrowser python3.6 neovim tree -y
sudo apt install openssh-server ranger python-pip password-gorilla uqlitebrowser -y
sudo apt-get install fonts-powerline -y
sudo apt-get install tmux zsh htop -y
sudo npm install -g @angular/cli -y
TERM=xterm-256color #variable is needed for oh my tmux config
x=$(which)
chsh -s $x
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/gpakosz/.tmux.git
mv -f zshrc .zshrc
mv -f vimrc .vimrc


################################
#     G++
############################
sudo apt-get install g++

sudo apt install python-setuptools -y
sudo easy_install -U pip
sudo ufw allow mysql

sudo apt-get install -y postgresql-9.3 postgresql-contrib-9.3 libpq-dev

############################################
#         vim  installation and settings
#         vim
############################

sudo apt-get install neovim -y
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
chmod +x installDocker
./installDocker.sh
