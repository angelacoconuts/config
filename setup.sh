#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 

# Install maven for java project management
sudo apt-get install maven

# Install java 7
# sudo add-apt-repository ppa:webupd8team/java
# sudo apt-get update
# sudo apt-get install oracle-java7-installer
#Modify default java sdk and jre settings
# JAVA_HOME=/usr/local/java/jdk1.7.0_25
# PATH=$PATH:$JAVA_HOME/bin
# JRE_HOME=/usr/local/java/jre1.7.0_25
# PATH=$PATH:$JRE_HOME/bin

# sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jre1.7.0_25/bin/java" 1
# sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.7.0_25/bin/javac" 1
# sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jre2.7.0_25/bin/javaws" 1

# sudo update-alternatives --set java /usr/local/java/jre1.7.0_25/bin/java
# sudo update-alternatives --set javac /usr/local/java/jdk1.7.0_25/bin/javac
# sudo update-alternatives --set javaws /usr/local/java/jre1.7.0_25/bin/javaws

# Install git and curl if 
sudo apt-get install -y git-core
sudo apt-get install -y curl

# Install nvm: node-version manager
# https://github.com/creationix/nvm
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# Load nvm and install latest production node
source $HOME/.nvm/nvm.sh
nvm install v0.10.12
nvm use v0.10.12

# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
sudo apt-get install npm
npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo apt-add-repository -y ppa:cassou/emacs
sudo apt-get -qq update
sudo apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg

# Install Heroku toolbelt
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# git pull and install dotfiles as well
cd $HOME
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi
if [ -d .emacs.d/ ]; then
    mv .emacs.d .emacs.d~
fi
git clone https://github.com/startup-class/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
ln -sf dotfiles/.emacs.d .

# Install PostgreSQL
sudo apt-get install -y postgresql
#sudo to super user and create user
sudo -s -u postgres createuser ubuntu

sudo apt-get install build-essential

