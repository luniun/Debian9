#!/bin/bash

echo "Mise a jour du systeme"

apt update && apt upgrade -y

echo "Ok"

echo "Installation des depandances"

apt install git curl net-tools apt-tools sudo ca-certificates -y

echo "Ok"
