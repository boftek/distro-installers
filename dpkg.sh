#!/bin/bash

# INSTALL CORE APPS FOR philip

cd Downloads
wget https://bit.ly/discordcore -O discord.deb
wget https://launcher.mojang.com/download/Minecraft.deb -O Minecraft.deb
wget https://go.skype.com/skypeforlinux-64.deb -O skypeforlinux-64.deb
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O code.deb
wget https://dl.strem.io/linux/v4.4.54/stremio_4.4.52-1_amd64.deb -O stremio_4.4.52-1_amd64.deb
wget https://go.microsoft.com/fwlink/p/?linkid=2112886 -O teams.deb
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb -O steam.deb
sudo dpkg -i Minecraft.deb
sudo apt-get install -f
sudo dpkg -i skypeforlinux-64.deb
sudo apt-get install -f 
sudo dpkg -i discord.deb
sudo apt-get install -f
sudo dpkg -i stremio_4.4.52-1_amd64.deb
sudo apt-get install -f
sudo dpkg -i teams.deb
sudo apt-get install -f
sudo dpkg -i code.deb
sudo apt-get install -f
sudo dpkg -i steam.deb
sudo apt-get install -f

cd
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client
wget https://github.com/danielchatfield/trello-desktop/releases/download/v0.1.9/Trello-linux-0.1.9.zip -O trello.zip
sudo mkdir /opt/trello
sudo unzip trello.zip -d /opt/trello/
sudo ln -sf /opt/trello/Trello /usr/bin/trello
echo -e '[Desktop Entry]\n Version=1.0\n Name=Trello\n Exec=/usr/bin/trello\n Icon=/opt/trello/resources/app/static/Icon.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/trello.desktop
sudo chmod +x /usr/share/applications/trello.desktop

# Updated 16.3.2020
