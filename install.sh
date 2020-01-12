#!/bin/bash

echo preparing access point
apt-get install hostapd dnsmasq -y

echo stopping services
systemctl stop dnsmasq
systemctl stop hostapd

echo copying config
cp etc /etc -r

echo restarting services
service dhcpcd restart
systemctl reload dnsmasq
systemctl unmask hostapd
systemctl enable hostapd
systemctl start hostapd
