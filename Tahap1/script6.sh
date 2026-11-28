# Atur konfigurasi wallpaper default untuk semua pengguna baru (termasuk pengguna Live) melalui /etc/skel
mkdir -p /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml
cat << 'EOF' >
/etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
<?xml version="1.0" encoding="UTF-8"?>
<channel name="xfce4-desktop" version="1.0">
	<property name="backdrop" type="empty">
		<property name="screen0" type="empty">
			<property name="monitorVirtual1" type="empty">
				<property name="workspace0" type="empty">
					<property name="last-image" type="string"
value="/usr/share/backgrounds/distro-custom/wallpaper.jpeg"/>
					<property name="image-style" type="int" value="5"/>
				</property>
			</property>
			<property name="monitor0" type="empty">
				<property name="workspace0" type="empty">
					<property name="last-image" type="string"
value="/usr/share/backgrounds/distro-custom/wallpaper.jpeg"/>
				<property name="image-style" type="int" value="5"/>
			</property>
		</property>
	</property>
</property>
</channel>
EOF

# Atur wallpaper layar login LightDM
cat << 'EOF' > /etc/lightdm/lightdm-gtk-greeter.conf
[greeter]
background=/usr/share/backgrounds/distro-custom/wallpaper-distro.jpg
theme-name=Greybird
icon-theme-name=elementary-xfce-dark
EOF
