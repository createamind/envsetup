#
#


#https://askubuntu.com/questions/425754/how-do-i-run-a-sudo-command-inside-a-script/425990



sudo apt update
sudo apt install -y ssh git htop vim tmux curl subversion zsh  libopenmpi-dev libxrender1     libtbb2

sudo apt-get install -y python-numpy  cmake zlib1g-dev libjpeg-dev xvfb  python-pip  python3-venv make golang wget unzip git fceux virtualenv      tmux



#install python 37
echo "-------------------------------------------------------------------------------------------------install python 37"
sudo apt install software-properties-common     -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.7 python3.7-dev -y







#change pip source
echo "---------------------------------------------------------------------------------------------------make pip source"
mkdir ~/.pip/

echo '[global]' >>  ~/.pip/pip.conf
echo 'index-url = http://mirrors.aliyun.com/pypi/simple/' >>  ~/.pip/pip.conf
echo '[install]' >>  ~/.pip/pip.conf
echo 'trusted-host=mirrors.aliyun.com' >>  ~/.pip/pip.conf

echo "conform-----------"
cat   ~/.pip/pip.conf


#####https://stackoverflow.com/questions/14547631/python-locale-error-unsupported-locale-setting/36257050

#pip install virtualenv
#sudo /usr/bin/easy_install virtualenv
virtualenv -p python3.7 ~/py37venv


#zsh
bash ./inzsh.sh

## bashrc add zsh??

#echo " " >> ~/.zshrc:q
#echo "source ~/py37venv/bin/activate" >> ~/.zshrc
#echo " " >> ~/.zshrc


#svn checkout
#git clone code
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/
