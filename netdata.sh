apt-get install zlib1g-dev gcc make nginx-full git autoconf autogen automake pkg-config uuid-dev zlib1g-dev  -y
cd /opt
git clone https://github.com/firehol/netdata.git netdata --depth=1
cd netdata
./netdata-installer.sh
apt-get install apache2-utils -y
htpasswd -c /etc/nginx/.htpasswd luniun
