# Update to wsl 2. From powershell, run the following:
# wsl --set-version Debian 2

# Update system
sudo apt update && sudo apt upgrade

# install zsh
sudo apt install curl zsh git

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# When asked:
# Time to change your default shell to zsh:
# Do you want to change your default shell to zsh? [Y/n] y
#
# Choose y!

# install antigen
sudo apt-get install zsh-antigen
# or use git.io/antigen-nightly for the latest version
