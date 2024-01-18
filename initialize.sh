#!/bin/bash
#Business As Usual for update and upgrade
sudo apt update;
sudo apt upgrade;
sudo apt install yes;

sudo apt install debian-keyring | yes
sudo apt install debian-archive-keyring | yes

sudo ntpdate -s ntp.torix.ca; #Update Time using NTP Server
sudo timedatectl set-timezone America/Toronto;
