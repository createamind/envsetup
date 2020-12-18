
#https://askubuntu.com/questions/425754/how-do-i-run-a-sudo-command-inside-a-script/425990
##tmux cache buffer size  https://stackoverflow.com/questions/18760281/how-to-increase-scrollback-buffer-size-in-tmux

#https://github.com/createamind/Planet/issues/3
#https://linuxize.com/post/how-to-create-a-sudo-user-on-ubuntu/

#conda:https://zhuanlan.zhihu.com/p/183981491;;  Miniconda3;;pip install jupyter pandas xgboost hyperopt sklearn matplotlib tensorflow-gpu==2.3 pyarrow

sudo adduser jz ; sudo  usermod -aG sudo jz    ;su jz ;
#https://www.runoob.com/w3cnote/set-ssh-login-key.html  ssh-keygen
ssh-keygen ;cd /home/jz/.ssh;  echo > authorized_keys;  chmod 600 authorized_keys     ;vim authorized_keys;
#####https://stackoverflow.com/questions/14547631/python-locale-error-unsupported-locale-setting/36257050


sudo apt update

sudo apt-get install -y python-numpy  cmake zlib1g-dev libjpeg-dev xvfb  python-pip  python3-venv make golang wget unzip git fceux virtualenv   cpufrequtils   tmux      ssh git htop vim tmux curl subversion zsh  libopenmpi-dev libxrender1  lrzsz   libtbb2    python3.6-dev        linux-tools-$(uname -r)      net-tools

#change pip source
echo "---------------------------------------------------------------------------------------------------make pip source"
mkdir ~/.pip/

echo '[global]' >>  ~/.pip/pip.conf
echo 'index-url = http://mirrors.aliyun.com/pypi/simple/' >>  ~/.pip/pip.conf
echo '[install]' >>  ~/.pip/pip.conf
echo 'trusted-host=mirrors.aliyun.com' >>  ~/.pip/pip.conf

echo "conform-----------"
cat   ~/.pip/pip.conf



virtualenv -p python3.6 ~/py36venv
source ~/py36venv/bin/activate
pip install -r ./requirement/req.txt
pip list

#DDRL  SQN
#pip install ray==0.7.6 lz4 psutil requests setproctitle

#zsh
bash ./inzsh.sh


#svn checkout
#git clone code         ; pip install -e .
#cp env to code dir


#echo " " >> ~/.zshrc
#echo " " >> ~/.zshrc

echo "source ~/py36venv/bin/activate" >> ~/.zshrc
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/jz/github/rl_game/game" >> ~/.zshrc
echo "cd /home/jz/github/game_sample/stable_baselines/game" >> ~/.zshrc
echo "export CUDA_VISIBLE_DEVICES=1 " >> ~/.zshrc
cat  ~/.zshrc


## code pull or same make version ok?
## /usr/bin/taskset  ‐c '15-30'  python run..... ;
##sudo cpupower -c all frequency-set -g performance    ; cat /proc/cpuinfo |grep MHz|uniq

