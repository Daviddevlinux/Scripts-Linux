#!/bin/bash

echo "Criando diretórios..."

sudo mkdir /publico1
sudo mkdir /adm1
sudo mkdir /ven1
sudo mkdir /sec1

echo "Criando grupos de usuários..."

sudo groupadd GRP_ADM_1
sudo groupadd GRP_VEN_1
sudo groupadd GRP_SEC_1

echo "Criando usuários..."

sudo useradd carlos -m -c "Carlos Barbosa" -s /bin/bash -p $(openssl passwd -6 "senha123")
sudo useradd maria -m -c "Maria do Carmo" -s /bin/bash -p $(openssl passwd -6 "senha123")
sudo useradd joao -m -c "João Silva" -s /bin/bash -p $(openssl passwd -6 "senha123")

sudo useradd debora -m -c "Débora Santos" -s /bin/bash -p $(openssl passwd -6 "senha123")
sudo useradd sebastiao -m -c "Sebastião Marques" -s /bin/bash -p $(openssl passwd -6 "senha123")
sudo useradd roberto -m -c "Roberto Monteiro" -s /bin/bash -p $(openssl passwd -6 "senha123")

sudo useradd josefina -m -c "Josefina Maria" -s /bin/bash -p $(openssl passwd -6 "senha123")
sudo useradd amanda -m -c "Amanda Oliveira" -s /bin/bash -p $(openssl passwd -6 "senha123")
sudo useradd rogerio -m -c "Rogério Neves" -s /bin/bash -p $(openssl passwd -6 "senha123")

echo "Especificando permissões dos diretórios..."

sudo chown root:GRP_ADM_1 /adm1
sudo chown root:GRP_VEN_1 /ven1
sudo chown root:GRP_SEC_1 /sec1

sudo chmod 770 /adm1
sudo chmod 770 /ven1
sudo chmod 770 /sec1
sudo chmod 777 /publico1

echo "Deu tudo certo!"
