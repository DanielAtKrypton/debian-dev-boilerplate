# Debian Development Boilerplate

## Requirements
Make sure you have a fresh Debian installation to proceed.
If your Debian distro is running on WSL, make sure you have successfully set WSL2 with the following command on Powershell:

```powershell
wsl --set-version Debian 2
```

## Installation
```bash
sudo apt update && sudo apt upgrade && sudo apt install curl git && sh -c "$(curl -fsSL https://github.com/DanielAtKrypton/debian-dev-boilerplate/raw/master/src/install_script.sh)"
```