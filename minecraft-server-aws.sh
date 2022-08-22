#!/usr/bin/bash
read -p "マインクラフトサーバーのバージョンを入力してください。｛例：bedrock-server-1.19.20.02 ｝" minecraftversion

export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_DEFAULT_REGION=

echo "deb http://security.ubuntu.com/ubuntu focal-security main" | sudo tee /etc/apt/sources.list.d/focal-security.list
sudo apt update -y
sudo apt upgrade -y 
sudo apt-get install libssl1.1 -y
sudo apt install unzip -y

mkdir minecraft
cd minecraft
wget https://minecraft.azureedge.net/bin-linux/$minecraftversion.zip
unzip $minecraftversion.zip

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws s3 cp s3://monokamo/ ~/minecraft/ --recursive




