#!/bin/bash
a="1|2|3\n4|5|6\n7|8|9"
s=xo
while [ -z "${a##*[0-9]*}" ];do
echo -e $a
read -p "${s:$u:1}> " d
b="${a/$d/${s:$u:1}}"
[ $a != $b ]&&(((u^=1)<2))&&a=$b
done
echo -e $a
