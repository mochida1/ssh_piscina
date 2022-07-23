#!/bin/bash
echo "---------FECHANDO A PORRA TODA---------"
file='./BKP/config'
if [ -f $file ]; then
	cat ./BKP/config > ~/.ssh/config
else
	rm -f ~/.ssh/config
fi
rm -rf BKP
rm -f ~/.ssh/DELETEME
rm -f ~/.ssh/DELETEME.pub
