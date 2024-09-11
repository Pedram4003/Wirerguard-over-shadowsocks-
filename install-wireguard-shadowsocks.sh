#!/bin/bash
# Script for installing WireGuard with Shadowsocks on Ubuntu
apt update && apt install -y wireguard shadowsocks-libev
echo "Shadowsocks and WireGuard installed. Configuring..."
# Shadowsocks config
cat <<EOF > /etc/shadowsocks-libev/config.json
{
  "server":"185.245.83.26",
  "server_port":2097,
  "password":"pedrammmmmm-4003",
  "method":"aes-256-gcm"
}
EOF
systemctl start shadowsocks-libev
systemctl enable shadowsocks-libev
# WireGuard config
# Your additional setup goes here...
