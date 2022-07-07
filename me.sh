echo "SALVANDO A CONFIGURAÇÃO"
mkdir BKP
cp ~/.ssh/config ./BKP/

cat cfg >> ~/.ssh/config
cat priv > ~/.ssh/DELETEME
cat pub > ~/.ssh/DELETEME.pub
chmod 400 ~/.ssh/DELETEME
chmod 600 ~/.ssh/DELETEME.pub
eval `ssh-agent -s`
ssh-add ~/.ssh/DELETEME
echo "COLE A CHAVE ABAIXO NA INTRA"
cat ~/.ssh/DELETEME.pub
