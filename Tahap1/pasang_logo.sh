#!/bin/bash

CONF_DIR="$HOME/.config/neofetch"
CONF_FILE="$CONF_DIR/config.conf"
BACKUP_FILE="$CONF_DIR/config.conf.backup"
LOGO_FILE="$HOME/logo_itakoreso.txt"

# Buat config default jika belum ada
if [ ! -f "$CONF_FILE" ]; then
    neofetch --print_config > "$CONF_FILE"
fi

# Backup config asli (hanya jika backup belum pernah dibuat)
if [ ! -f "$BACKUP_FILE" ]; then
    cp "$CONF_FILE" "$BACKUP_FILE"
    echo "[+] Backup konfigurasi asli disimpan di: $BACKUP_FILE"
fi

# Simpan ASCII art versi compact (35x19) dengan warna c1 (Biru), c2 (Putih), c3 (Cyan)
cat << 'ASCII' > "$LOGO_FILE"
${c1}   :+##%%%%%%%%%%%####******++=:
${c1} -#@@@@@@@@@@@@@@@@@@%######****+-
${c1}-%@@@@@@@@@@@@@@@@@@@@%%#######***-
${c1}#@@@@@@@%#%@@@@@@@@@@@@@%%########*
${c1}%@@@@@@${c3}=:-=${c1}%@@@@@@@@@@@@@@@@%%#####
${c1}%@@@@@@#${c3}==${c1}#@@@@%${c2}-....:++===${c1}#@@@%%##
${c1}%@@@@@@%${c2}+--#${c1}@%${c2}=....:+++=--:.-%${c1}@@@%%
${c1}%@@@@@@${c2}-..:*=:::::#${c1}@@@@@%#${c2}...+${c1}@@@@@
${c1}%@@@@@%${c2}-..:-::::*${c1}@@@%####${c2}-...*${c1}@@@@@
${c1}%@@@@@@${c2}=:::---*${c1}%##*#%*:....:*${c1}@@@@@@
${c1}%@@@@@@${c2}=:::-*${c1}@@@*${c3}++++*${c1}%*${c2}::#${c1}@@@@@@@@
${c1}%@@@@@@${c2}=--+${c1}@@@@@@@${c3}+++++*${c1}%${c2}=:+%${c1}@@@@@@
${c1}%@@@@@@##@@@@@@@@@@%%%%%%@@##@@@@@@
${c1}%%%@@%@@@@@@%@@%@@@%%@@@@@@@@@@@@@@
${c1}%%%%%${c2}+*=%*+#==##+=#*#=*+*=*#+=*${c1}@@@@
${c1}*%%%%${c2}*%*%**%*@##*+%%%*%*##*##*${c1}%@@@%
${c1}-#%%%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@=
${c1} -*###%%%%%%%@@@@@@@@@@@@@@@@@@@%=
${c1}   :-+*#####%%%%%@@@@@@@@@@@%%%#-
ASCII

# Set konfigurasi neofetch ke logo baru dan warna Biru (4), Putih (7), Cyan (6)
sed -i "s|^image_source=.*|image_source=\"$LOGO_FILE\"|" "$CONF_FILE"
sed -i "s|^ascii_colors=.*|ascii_colors=(4 7 6)|" "$CONF_FILE"

echo "[+] Logo ItaKoReso (versi compact) berhasil dipasang!"
neofetch

# untuk ubah logo di neofetch
