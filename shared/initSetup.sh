#!/bin/bash
# GNU AGPLv3
# File              : initSetup.sh
# Author            : Jose Gonzalez <joseaugusto978@gmail.com>
# Date              : 18.01.2019
# Last Modified Date: 20.01.2019
# Last Modified By  : Jose Gonzalez <joseaugusto978@gmail.com>
echo 'My costome linux settup'
cd
#core section could cuase conflics if moved
########################3
mv .zshrc zshrc
mv .vimrc vimrc
sudo apt-get update && sudo apt-get upgrade sqlitebrowser vim yadm -y

sudo apt install npm git git-core zsh tor -y
sudo npm install @angular/cli
################################
#
#
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
sudo npm install -g bower
git clone https://github.com/gpakosz/.tmux.git
mv -f zshrc .zshrc
mv -f vimrc .vimrc
################################
#
#
#     docker
############################

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
docker-ce:
  Installed: (none)
    Candidate: 18.06.1~ce~3-0~ubuntu
      Version table:
           18.06.1~ce~3-0~ubuntu 500
	           500 https://download.docker.com/linux/ubuntu xenial/stable amd64 Packages

sudo apt-get install -y docker-ce
sudo systemctl status docker
sudo usermod -aG docker ${USER}
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

################################
#
#
#     G++
############################
sudo apt-get install g++

sudo apt install python-setuptools -y
sudo easy_install -U pip
################################
#
#
#     Java
############################
sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
#Data bases
sudo ufw allow mysql

sudo apt-get install -y postgresql-9.3 postgresql-contrib-9.3 libpq-dev
####################################################################################3333

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code # or code-insider -y



############################################
#         vim  installation and settings
#
#
#         vim
############################

echo 'vim  settup and extentions for NeoVim'

sudo apt-get install build-essential cmake python3-dev -y
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
######################
pip install neovim
sudo apt-get update && sudo apt-get upgrade -y
