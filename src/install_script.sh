#!/usr/bin/env bash

# Update to wsl 2. From powershell, run the following:
# wsl --set-version Debian 2

apt upgrade

. /etc/os-release
distribution_id=$(. /etc/os-release; echo $ID)

# https://ubuntu.com/blog/getting-started-with-cuda-on-ubuntu-on-wsl-2
apt-get install curl netcat

# install zsh
apt install zsh

# install git
apt install git

# install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install Antigen
if [ $distribution_id = "debian" ]; then
  apt-get install zsh-antigen
elif [ $distribution_id = "ubuntu" ]; then
  curl -L git.io/antigen > $HOME/antigen.zsh
else
  echo "Unknown distribution."
  exit 1
fi
# or use git.io/antigen-nightly for the latest version

# Configure Antigen
sh -c "$(wget https://github.com/DanielAtKrypton/debian-dev-boilerplate/raw/master/src/.antigenrc -O ~/.antigenrc)"

# Config zsh to use Antigen
sh -c "$(wget https://github.com/DanielAtKrypton/debian-dev-boilerplate/raw/master/src/.zshrc_extra -O ~/.zshrc_extra)"
cat ~/.zshrc ~/.zshrc_extra > ~/.zshrc
rm ~/.zshrc_extra


# Now set ZSH as the default login shell for the user you’re logged in as with the following command:
# sudo chmod gu+w ~/.zshrc
# sudo chown $(whoami) ~/.zshrc

# sudo usermod -s /usr/bin/zsh $(whoami)

exit
