wget -q https://git.io/voEUQ -O /tmp/raspap && bash /tmp/raspap --yes
sudo sed -i 's/WifiAPEnable = 0/WifiAPEnable = 1/g' /etc/raspap/hostapd.ini
sudo sed -i 's/ssid=raspi-webgui/ssid=FBI Surveillance Van/g' /etc/hostapd/hostapd.conf
sudo sed -i 's/wpa_passphrase=ChangeMe/wpa_passphrase=12345678/g' /etc/hostapd/hostapd.conf
sudo sed -i 's/wpa_pairwise=TKIP/wpa_pairwise=CCMP/g' /etc/hostapd/hostapd.conf
sudo sed -i 's/interface=wlan0/#interface=wlan0/g' /etc/hostapd/hostapd.conf
sudo sed -i 's/wpa=1/wpa=2/g' /etc/hostapd/hostapd.conf
sudo sed -i 's/#interface=uap0/interface=uap0/g' /etc/hostapd/hostapd.conf
sudo sed -i 's/country_code=/country_code=US/g' /etc/hostapd/hostapd.conf
curl -sSL https://install.pi-hole.net | bash
sudo touch /var/lib/misc/dnsmasq.leases
sudo chown pihole:pihole /var/lib/misc/dnsmasq.leases
sudo reboot