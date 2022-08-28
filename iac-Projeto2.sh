#!/bin/bash

echo "Atualizando o servidor........"

apt-get update
apt-get upgrade -y

echo "Instalando o Apache2........."
apt-get install apache2 -y

echo "Instalação do unzip........."

apt-get install unzip -y

cd /tmp

echo "Instalar o wget"

apt-get install wget -y

echo "Baixando aplicações do Github......."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Abrindo arquivos com unzip......."

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/


