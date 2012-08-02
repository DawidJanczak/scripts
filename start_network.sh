#iwlist wlan0 scan
sudo wpa_supplicant -B -Dwext -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf
sudo dhcpcd
