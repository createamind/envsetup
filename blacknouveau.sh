###


#wget cuda     10  1604

##cuda version for tensorflow!!

#https://developer.nvidia.com/zh-cn/accelerated-computing-toolkit

wget https://developer.nvidia.com/compute/cuda/10.0/Prod/local_installers/cuda_10.0.130_410.48_linux




！！！！online install better;


#sudo nano /etc/modprobe.d/blacklist-nouveau.conf

sudo echo 'blacklist nouveau' >> /etc/modprobe.d/blacklist-nouveau.conf
sudo echo 'options nouveau modeset=0' >> /etc/modprobe.d/blacklist-nouveau.conf

echo "conform-----------"
cat /etc/modprobe.d/blacklist-nouveau.conf

sudo update-initramfs -u

sudo reboot

sudo /etc/init.d/lightdm stop
sudo /etc/init.d/gdm3  stop

sudo apt-get install build-essential

sudo  apt-get install linux-image-$(uname -r)    linux-headers-$(uname -r)
sudo apt install dkms          ## https://blog.csdn.net/baobei0112/article/details/81488478



###install cudnn

