#!/bin/bash
#Business As Usual for update and upgrade
sudo apt update;
sudo apt upgrade;
sudo apt install wget git;

sudo apt install debian-keyring -y
sudo apt install debian-archive-keyring -y

echo "nameserver 1.1.1.1" | sudo tee -a /etc/resolv.conf > /dev/null
echo "nameserver 8.8.8.8" >> /etc/resolv.conf > /dev/null

sudo ntpdate -s ntp.torix.ca; #Update Time using NTP Server
sudo timedatectl set-timezone America/Toronto;
