#!/bin/bash

# INSTALL APPS YOU WANT

cd Downloads
mkdir TEMP
cd TEMP
wget https://bit.ly/discordcore -O discord.deb
wget https://launcher.mojang.com/download/Minecraft.deb -O Minecraft.deb
wget https://go.skype.com/skypeforlinux-64.deb -O skypeforlinux-64.deb
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O code.deb
wget https://dl.strem.io/linux/v4.4.54/stremio_4.4.52-1_amd64.deb -O stremio_4.4.52-1_amd64.deb
wget https://go.microsoft.com/fwlink/p/?linkid=2112886 -O teams.deb
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb -O steam.deb
sudo dpkg -i Minecraft.deb
sudo apt-get -y install -f
sudo dpkg -i skypeforlinux-64.deb
sudo apt-get -y install -f 
sudo dpkg -i discord.deb
sudo apt-get -y install -f
sudo dpkg -i stremio_4.4.52-1_amd64.deb
sudo apt-get -y install -f
sudo dpkg -i teams.deb
sudo apt-get -y install -f
sudo dpkg -i code.deb
sudo apt-get -y install -f
sudo dpkg -i steam.deb
sudo apt-get -y install -f
cd
cd Downloads
rm -rf TEMP

# SPOTIFY INSTALLER
cd
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client


# Updated 16.4.2020
