###


#wget cuda





#sudo nano /etc/modprobe.d/blacklist-nouveau.conf

sudo echo 'blacklist nouveau' >> /etc/modprobe.d/blacklist-nouveau.conf
sudo echo 'options nouveau modeset=0' >> /etc/modprobe.d/blacklist-nouveau.conf

echo "conform-----------"
cat /etc/modprobe.d/blacklist-nouveau.conf

sudo update-initramfs -u

sudo reboot
