#!/bin/bash

echo preparing access point
apt-get install hostapd dnsmasq conntrack -y

echo stopping services
systemctl stop dnsmasq
systemctl stop hostapd

echo copying config
cp etc /etc -r

echo setting up rmtrack
cp usr /usr

echo restarting services
service dhcpcd restart
systemctl reload dnsmasq
systemctl unmask hostapd
systemctl enable hostapd
systemctl start hostapd
