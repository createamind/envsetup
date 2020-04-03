#
#

#https://askubuntu.com/questions/425754/how-do-i-run-a-sudo-command-inside-a-script/425990
##tmux cache buffer size  https://stackoverflow.com/questions/18760281/how-to-increase-scrollback-buffer-size-in-tmux
#https://github.com/createamind/Planet/issues/3
#https://linuxize.com/post/how-to-create-a-sudo-user-on-ubuntu/
# adduser username;;usermod -aG sudo username
#https://www.runoob.com/w3cnote/set-ssh-login-key.html
#####https://stackoverflow.com/questions/14547631/python-locale-error-unsupported-locale-setting/36257050


sudo apt update

sudo apt-get install -y python-numpy  cmake zlib1g-dev libjpeg-dev xvfb  python-pip  python3-venv make golang wget unzip git fceux virtualenv   cpufrequtils   tmux      ssh git htop vim tmux curl subversion zsh  libopenmpi-dev libxrender1  lrzsz   libtbb2    python3.6-dev        linux-tools-$(uname -r)      net-tools


#install python 37
#echo "-------------------------------------------------------------------------------------------------install python 37"
#sudo apt install software-properties-common     -y
#sudo add-apt-repository ppa:deadsnakes/ppa
#sudo apt update
#sudo apt install python3.7 python3.7-dev -y


#change pip source
echo "---------------------------------------------------------------------------------------------------make pip source"
mkdir ~/.pip/

echo '[global]' >>  ~/.pip/pip.conf
echo 'index-url = http://mirrors.aliyun.com/pypi/simple/' >>  ~/.pip/pip.conf
echo '[install]' >>  ~/.pip/pip.conf
echo 'trusted-host=mirrors.aliyun.com' >>  ~/.pip/pip.conf

echo "conform-----------"
cat   ~/.pip/pip.conf


#pip install virtualenv
#sudo /usr/bin/easy_install virtualenv
virtualenv -p python3.6 ~/py36venv
source ~/py36venv/bin/activate
pip install -r ./requirement/req.txt
pip list

#DDRL  SQN
#pip install ray==0.7.6 lz4 psutil requests setproctitle

#zsh
bash ./inzsh.sh

#svn checkout
# env maybe use py36 more stable;;
#git clone code         ; pip install -e .
             ##cp env to code dir


#gcc version??     540
#sudo apt-get install gcc-5
#gcc -v
#cat /etc/issue
#cd /usr/bin
#sudo rm gcc
#sudo ln -s  gcc-5 gcc


## bashrc add zsh??
#echo " " >> ~/.zshrc
#echo "source ~/py36venv/bin/activate" >> ~/.zshrc
#echo " " >> ~/.zshrc

##add zsh??

#source ~/py36venv/bin/activate
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/jz/rl_game/game
#cd /home/jz/zdx/github/game_sample/stable_baselines/game

## code pull or same make version ok?

##for p in `ls /proc/4989/task`; do "/usr/bin/taskset  ‐c '15-30'  -p $p" ; done

##sudo cpupower -c all frequency-set -g performance    ; cat /proc/cpuinfo |grep MHz|uniq