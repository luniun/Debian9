#!/bin/bash

echo "Mise a jour du systeme"
echo ""
echo ""
sleep 2

apt update && apt upgrade -y
echo ""
echo ""
echo "Ok"
sleep 2
echo "Installation des depandances"
echo ""
echo ""
apt install git curl net-tools sudo ca-certificates -y

echo "Ok"
sleep 2
echo ""
echo ""
echo "Configuration ssh"
echo ""
echo ""
sed -i 's/#HostKey \/etc\/ssh\/ssh_host_ed25519_key/HostKey \/etc\/ssh\/ssh_host_ed25519_key/' /etc/ssh/sshd_config
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin prohibit-password/' /etc/ssh/sshd_config
sed -i 's/#AuthorizedKeysFile/AuthorizedKeysFile/' /etc/ssh/sshd_config


service ssh restart

echo "Ok"
echo ""
echo ""
sleep 2

mkdir /root/.ssh
touch /root/.ssh/authorized_keys
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAwMXX5/ciygrkXrisEkvgY40AWMCLUKGrt0Y5Yn2gUj ed25519-key-20190304' >> /root/.ssh/authorized_keys

echo "Ok"
echo ""
echo ""
sleep 2

userdel -r -f  luniun
echo ""
echo ""
sleep 2

echo "Systeme Pret"

