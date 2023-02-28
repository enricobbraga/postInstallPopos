#!/bin/bash

sudo dpkg --add-architecture i386
sudo apt update

mkdir /home/$USER/Downloads/Programas
cd /home/$USER/Downloads/Programas

sudo wget https://az764295.vo.msecnd.net/stable/d045a5eda657f4d7b676dedbfa7aab8207f8a075/code_1.72.2-1665614327_amd64.deb
sudo wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i *.deb
sudo sh install.sh

##Deixar marcado no POP-OS
#sudo apt install gnome-software -y
#sudo apt install gnome-software-plugin-flatpak -y
#sudo apt install flatpak -y
sudo apt install gnome-extensions -y

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#flatpak install flathub org.kde.elisa -y
flatpak install flathub com.discordapp.Discord -y
#flatpak install flathub org.libretro.RetroArch -y
flatpak install flathub org.qbittorrent.qBittorrent -y
flatpak install flathub com.stremio.Stremio -y
flatpak install flathub de.haeckerfelix.Shortwave -y
flatpak install flathub com.leinardi.gwe -y

sudo apt install htop -y
#sudo apt install geary -y
sudo apt install lutris -y
sudo apt install vlc -y
#sudo apt install synaptic -y
sudo apt install gnome-tweaks -y
sudo apt install zsh -y

sudo apt update

#Driver NVIDIA 390 no POP-OS
sudo apt install nvidia-driver-390 -y
sudo nvidia-xconfig --cool-bits=28

sudo reboot


