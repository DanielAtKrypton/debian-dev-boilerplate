# Update to wsl 2. From powershell, run the following:
# wsl --set-version Debian 2

# install zsh
sudo apt install zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# When asked:
# Time to change your default shell to zsh:
# Do you want to change your default shell to zsh? [Y/n] y
#
# Choose y!

# install Antigen
sudo apt-get install zsh-antigen
# or use git.io/antigen-nightly for the latest version

# Configure Antigen
curl https://github.com/DanielAtKrypton/debian-dev-boilerplate/raw/master/src/.antigenrc -o ~/.antigenrc

# Config zsh to use Antigen
curl https://github.com/DanielAtKrypton/debian-dev-boilerplate/raw/master/src/.zshrc -o ~/.zshrc