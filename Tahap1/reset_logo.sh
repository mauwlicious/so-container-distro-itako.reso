#!/bin/bash

CONF_DIR="$HOME/.config/neofetch"
CONF_FILE="$CONF_DIR/config.conf"
BACKUP_FILE="$CONF_DIR/config.conf.backup"
LOGO_FILE="$HOME/logo_itakoreso.txt"

if [ -f "$BACKUP_FILE" ]; then
    cp "$BACKUP_FILE" "$CONF_FILE"
    echo "[+] Konfigurasi berhasil dikembalikan dari file backup."
else
    sed -i 's|^image_source=.*|image_source="auto"|' "$CONF_FILE"
    sed -i 's|^ascii_colors=.*|ascii_colors=(distro)|' "$CONF_FILE"
    echo "[+] Konfigurasi di-reset ke pengaturan bawaan (auto)."
fi

# Hapus file logo custom jika ada
rm -f "$LOGO_FILE"

echo "[+] Neofetch sudah kembali seperti semula:"
neofetch
