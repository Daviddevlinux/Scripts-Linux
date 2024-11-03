#!/bin/bash

echo "Atualizando o sistema..."
sudo apt update
sudo apt upgrade -y

echo "Instalando o Apache e Unzip..."
sudo apt install apache2 -y
sudo apt install unzip -y

echo "Baixando repositório do Git..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo baixado..."
unzip main.zip

echo "Finalizando cópia dos arquivos para o diretório do Apache..."
cd linux-site-dio-main
sudo cp -R * /var/www/html/

echo "Configuração concluída com sucesso!"
