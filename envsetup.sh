#
#


#https://askubuntu.com/questions/425754/how-do-i-run-a-sudo-command-inside-a-script/425990



sudo apt update
sudo apt install ssh git htop vim tmux curl subversion zsh


#install python 37
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.7


#python venv
sudo apt install python-pip
sudo /usr/bin/easy_install virtualenv
pip install virtualenv
virtualenv -p python3.7 py37venv



#change pip source
mkdir ~/.pip/

echo '[global]' >>  ~/.pip/pip.conf
echo 'index-url = http://mirrors.aliyun.com/pypi/simple/' >>  ~/.pip/pip.conf
echo '[install]' >>  ~/.pip/pip.conf
echo 'trusted-host=mirrors.aliyun.com' >>  ~/.pip/pip.conf

echo "conform-----------"
cat   ~/.pip/pip.conf


#zsh
bash ./inzsh.sh


#echo "source ~/py37venv/bin/activate" >> .zshrc