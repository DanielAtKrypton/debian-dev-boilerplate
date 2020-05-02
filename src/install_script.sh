# Update to wsl 2. From powershell, run the following:
# wsl --set-version Debian 2

# install zsh
sudo apt install zsh

# install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# When asked:
# Time to change your default shell to zsh:
# Do you want to change your default shell to zsh? [Y/n] y
#
# Choose y!

# install Antigen
sudo apt-get install zsh-antigen virtualenvwrapper
# or use git.io/antigen-nightly for the latest version

# Configure Antigen
sh -c "$(wget https://github.com/DanielAtKrypton/debian-dev-boilerplate/raw/master/src/.antigenrc -O ~/.antigenrc)"

# Config zsh to use Antigen
sh -c "$(wget https://github.com/DanielAtKrypton/debian-dev-boilerplate/raw/master/src/.zshrc -O ~/.zshrc)"