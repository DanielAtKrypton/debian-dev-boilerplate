#!/usr/bin/env bash

# Use antigen
. /etc/os-release
DISTRO=$NAME

if [ $DISTRO = "Debian GNU/Linux" ]; then
  source /usr/share/zsh-antigen/antigen.zsh
  antigen init ~/.antigenrc
elif [ $DISTRO = "Ubuntu" ]; then
  source $HOME/antigen.zsh
  antigen init ~/.antigenrc
else
  echo "Unknown distribution."
fi

# Configure theme
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# set DISPLAY variable to the IP automatically assigned to WSL2
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0