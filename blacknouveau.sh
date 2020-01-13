###

sudo nano /etc/modprobe.d/blacklist-nouveau.conf
With the following contents:

blacklist nouveau
options nouveau modeset=0
Regenerate the kernel initramfs:

sudo update-initramfs -u
Finally, reboot:

sudo reboot
