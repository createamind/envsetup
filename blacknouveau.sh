###


#wget cuda     10  1604

wget https://developer.nvidia.com/compute/cuda/10.0/Prod/local_installers/cuda_10.0.130_410.48_linux



#sudo nano /etc/modprobe.d/blacklist-nouveau.conf

sudo echo 'blacklist nouveau' >> /etc/modprobe.d/blacklist-nouveau.conf
sudo echo 'options nouveau modeset=0' >> /etc/modprobe.d/blacklist-nouveau.conf

echo "conform-----------"
cat /etc/modprobe.d/blacklist-nouveau.conf

sudo update-initramfs -u

sudo reboot

sudo /etc/init.d/lightdm stop
