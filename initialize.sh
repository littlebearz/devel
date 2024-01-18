#!/bin/bash
#Business As Usual for update and upgrade
sudo apt update;
sudo apt upgrade;
sudo apt install wget git;

sudo apt install debian-keyring -y
sudo apt install debian-archive-keyring -y

sudo ntpdate -s ntp.torix.ca; #Update Time using NTP Server
sudo timedatectl set-timezone America/Toronto;
