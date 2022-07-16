echo "SALVANDO A CONFIGURAÇÃO"
mkdir BKP
cp ~/.ssh/* ./BKP/
cfgFile='./BKP/config'
if [ -f $cfgFile ]; then
	cat ./cfg >> ~/.ssh/config
else
	cat ./cfg > ~/.ssh/config
fi
cat priv > ~/.ssh/DELETEME
cat pub > ~/.ssh/DELETEME.pub
chmod 400 ~/.ssh/DELETEME
chmod 600 ~/.ssh/DELETEME.pub
chmod +x ./rush01/rush01.sh
eval `ssh-agent -s`
ssh-add ~/.ssh/DELETEME
echo "-----------COLE A CHAVE ABAIXO NA INTRA-----------"
echo
cat ~/.ssh/DELETEME.pub
echo
echo "---------------------------------------------------"
