#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd andre -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd bianca -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd daniela -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd eleno -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd flavia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd gustavo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd helen -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd icaro -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "FIM!"
