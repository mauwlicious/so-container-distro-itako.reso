#!/bin/bash

# install paket yang perlu
apt install -y docker.io podman buildah skopeo runc cgroup-tools iproute2 git curl vim htop jq build-essential python3

# menginstall tampilan XFCE
apt install -y xfce4 xfce4-terminal xfce4-whiskermenu-plugin thunar-archive-plugin lightdm lightdm-gtk-greeter plymouth-themes

# Tetapkan LightDM sebagai display manager bawaan
echo "lightdm shared/default-x-display-manager select lightdm" |
debconf-set-selections

echo "/usr/sbin/lightdm" > /etc/X11/default-display-manager

dpkg-reconfigure -f noninteractive lightdm
