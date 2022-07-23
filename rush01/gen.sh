#!/bin/bash
#script do flávio(fde-capu)

if [[ $# -eq 0 ]] ; then
	echo -e '\nUsage:\n\t./gen.sh board_size\n';
	exit 0;
fi

python3 ./gen.py $1 > tmp;
cat tmp;
echo ;
cat tmp | head -1 | sed 's/ /\//g' | sed 's/\/$//' | xargs echo "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/towers.html?#$1:" | sed 's/ //'
echo ;
rm tmp;
