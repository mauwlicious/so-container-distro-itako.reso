#!/bin/bash
# Mengaktifkan autologin untuk Live USB / Try Ubuntu

# Buat file konfigurasi default session XFCE dan greeter LightDM
mkdir -p /etc/lightdm/lightdm.conf.d

cat << 'EOF' > /etc/lightdm/lightdm.conf.d/50-xfce-default.conf
[Seat:*]
user-session=xfce
greeter-session=lightdm-gtk-greeter
EOF

# Autologin untuk sesi Live (user ubuntu, tanpa timeout)
cat << 'EOF' > /etc/lightdm/lightdm.conf.d/50-live-autologin.conf
[Seat:*]
autologin-guest=false
autologin-user=ubuntu
autologin-user-timeout=0
autologin-session=xfce
EOF
