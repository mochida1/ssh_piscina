#!/bin/bash
echo "SALVANDO A CONFIGURAÇÃO"
mkdir BKP
cp ~/.ssh/* ./BKP/
cfgFile='./BKP/config'
if [ -f $cfgFile ]; then
	cat ./config/cfg >> ~/.ssh/config
else
	cat ./config/cfg > ~/.ssh/config
fi
cat ./config/priv > ~/.ssh/DELETEME
cat ./config/pub > ~/.ssh/DELETEME.pub
chmod 400 ~/.ssh/DELETEME
chmod 600 ~/.ssh/DELETEME.pub
chmod +x ./rush01/gen.sh
eval `ssh-agent -s`
ssh-add ~/.ssh/DELETEME
echo "-----------COLE A CHAVE ABAIXO NA INTRA-----------"
echo
cat ~/.ssh/DELETEME.pub
echo
echo "---------------------------------------------------"
