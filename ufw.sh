#!/bin/bash
###########################################
#          Created by Thomas Butz         #
#   E-Mail: btom1990(at)googlemail.com    #
#  Feel free to copy & share this script  #
###########################################

# Adapt this value to your config!
VPN_DST_PORT=443

# Don't change anything beyond this point
###########################################

# Check for root priviliges
if [[ $EUID -ne 0 ]]; then
   printf "Please run as root:\nsudo %s\n" "${0}"
   exit 1
fi


sudo ufw --force reset
sudo ufw default deny incoming
sudo ufw default deny outgoing
sudo ufw allow out on tun0
sudo ufw allow out on eth0 to any port 443,1413 proto tcp
sudo ufw allow out on wlan0 to any port 443,1413 proto tcp
sudo ufw status verbose
sudo ufw enable
