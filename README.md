# Debian Development Boilerplate

## Stack

- [Oh my zsh](https://ohmyz.sh/). Your terminal never felt this good before.
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k). Powerlevel10k is a theme for Zsh. It emphasizes speed, flexibility and out-of-the-box experience.
- [Antigen](http://antigen.sharats.me/). A plugin manager for zsh, inspired by oh-my-zsh and vundle.
- [VirtualenvWrapper](https://virtualenvwrapper.readthedocs.io/en/latest/). VirtualenvWrapper is a set of extensions to Ian Bicking’s virtualenv tool.
- [Virtualenv](https://pypi.org/project/virtualenv/). A tool for creating isolated virtual python environments.

## Requirements
Make sure you have a fresh Debian installation to proceed.
If your Debian distro is running on WSL, make sure you have successfully set WSL2 with the following command on Powershell:

```powershell
wsl --set-version Debian 2
```

## Installation

To install the boilerplate, issue the following one liner command in the bash shell.

```bash
sudo apt update && sudo apt upgrade && sudo apt install wget git && yes | sh -c "$(wget -O- https://github.com/DanielAtKrypton/debian-dev-boilerplate/raw/master/src/install_script.sh)"
```

## Preinstalled Oh my zsh plugins

- [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)
- [nvm](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/nvm)
- [npm](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/npm)
- [docker](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker)
- [z](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/z)
- [extract](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/extract)
- [pip](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/pip)
- [virtualenvwrapper](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/virtualenvwrapper)
- [virtualenv](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/virtualenv)

There are many more available [here](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins).

The recommended way to add a plugin is editing `.antigenrc` file.

## Update

To update the whole stack, enter the following commands in the bash shell:

```bash
sudo apt-get update
sudo apt-get install zsh-antigen virtualenvwrapper
antigen update
```
