#!/usr/bin/env bash

# Update to wsl 2. From powershell, run the following:
# wsl --set-version Debian 2

. /etc/os-release
distribution=$(. /etc/os-release; echo $ID$VERSION_ID)
distribution_id=$(. /etc/os-release; echo $ID)

# https://ubuntu.com/blog/getting-started-with-cuda-on-ubuntu-on-wsl-2
yes | sudo apt-get install curl gnupg

curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -

curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

curl -s -L https://nvidia.github.io/libnvidia-container/experimental/$distribution/libnvidia-container-experimental.list | sudo tee /etc/apt/sources.list.d/libnvidia-container-experimental.list

sudo apt update && sudo apt install -y nvidia-docker2

# install zsh
sudo apt install zsh

# install oh-my-zsh
yes | sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install Virtualenvwrapper
sudo apt-get install virtualenvwrapper

# install Antigen
if [ $distribution_id = "debian" ]; then
  sudo apt-get install zsh-antigen
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
sh -c "$(wget https://github.com/DanielAtKrypton/debian-dev-boilerplate/raw/master/src/.zprofile -O ~/.zprofile)"

# Now set ZSH as the default login shell for the user you’re logged in as with the following command:
sudo usermod -s /usr/bin/zsh $(whoami)

exit
