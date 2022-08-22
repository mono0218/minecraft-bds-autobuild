#!/usr/bin/bash

minecraftversion="bedrock-server-1.19.20.02.zip"

echo "deb http://security.ubuntu.com/ubuntu focal-security main" | sudo tee /etc/apt/sources.list.d/focal-security.list
sudo apt update
sudo apt upgrade
sudo apt-get install libssl1.1 
sudo apt install unzip

mkdir minecraft
cd minecraft
wget https://minecraft.azureedge.net/bin-linux/$minecraftversion
unzip $minecraftversion


