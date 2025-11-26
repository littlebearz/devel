#!/bin/bash
#How to use this script: 
# wget -O initialize.sh https://github.com/littlebearz/devel/raw/refs/heads/master/initialize.sh ; chmod +x ./initialize.sh ; ./initialize.sh
#Business As Usual for update and upgrade
sudo apt update;
sudo apt upgrade;
sudo apt install wget git -y;

sudo apt install debian-keyring -y
sudo apt install debian-archive-keyring -y

echo "nameserver 1.1.1.1" | sudo tee -a /etc/resolv.conf > /dev/null
echo "nameserver 8.8.8.8" >> /etc/resolv.conf > /dev/null

#Firewalls:
sudo apt install iptables -y;
iptables -A INPUT -s 192.168.0.0/16 -p tcp -m multiport --dports 139,445 -j ACCEPT
iptables -A INPUT -s 192.168.0.0/16 -p udp -m multiport --dports 137,138 -j ACCEPT
iptables -A INPUT -s 100.64.0.0/16 -p tcp -m multiport --dports 139,445 -j ACCEPT
iptables -A INPUT -s 100.64.0.0/16 -p udp -m multiport --dports 137,138 -j ACCEPT
iptables -A INPUT -p tcp -m multiport --dports 139,445 -j DROP
iptables -A INPUT -p udp -m multiport --dports 137,138 -j DROP

sudo ntpdate -s ntp.torix.ca; #Update Time using NTP Server
sudo timedatectl set-timezone America/Toronto;

#Setup Auth Keys
mkdir ~/.ssh/
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
wget -O ~/.ssh/authorized_keys https://github.com/littlebearz/devel/raw/refs/heads/master/authorized_keys -v;
