#!/bin/bash
# Script for installing WireGuard with Shadowsocks on Ubuntu
apt update && apt install -y wireguard shadowsocks-libev
echo "Shadowsocks and WireGuard installed. Configuring..."
# Shadowsocks config
cat <<EOF > /etc/shadowsocks-libev/config.json
{
  "server
systemctl start shadowsocks-libev
systemctl enable shadowsocks-libev
# WireGuard config
# Your additional setup goes here...
