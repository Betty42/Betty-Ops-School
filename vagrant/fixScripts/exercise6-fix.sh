#!/bin/bash
TOTALSIZE=0
filesize=0
files=($@)
count=$(( ${#files[*]} - 1 ))
last=${files[$count]}
if [ "$HOSTNAME" = server1 ]; then
    dest="192.168.100.11:"
else
    dest="192.168.100.10:"
fi
dest="${dest}${last}"
for var in "$@"
do
    if [[ $var == $last ]]
        then
		    echo $TOTALSIZE
	else
        filesize=$(wc -c "$var" | awk '{print $1}')
        TOTALSIZE=$((TOTALSIZE + filesize))
		scp $var $dest -q
	fi
done
echo $TOTALSIZE
