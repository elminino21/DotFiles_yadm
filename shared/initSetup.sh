#!/bin/bash
echo 'My costome linux settup'
cd
#core section could cuase conflics if moved
########################3
mv .zshrc zshrc
mv .vimrc vimrc
sudo apt-get update && sudo apt-get upgrade vim yadm -y


sudo apt install npm git zsh tor -y
################################
#
#
#     git
############################
sudo apt-get install git git-core
echo "Define your Git username"
read username
git config --global user.name "$username"
echo "Define your Git email"
read email
git config --global user.email "$email"

sudo apt install openssh-server ranger password-gorilla -y
sudo apt-get install fonts-powerline -y
sudo apt-get install tmux zsh htop -y

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

echo 'vim  settup and extentions for VundleVim'


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

##############################################
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer

python3 install.py --ts-completer

######################
sudo apt-get update && sudo apt-get upgrade -y
yadm clone https://github.com/elminino21/DotFiles_yadm

sudo reboot now
