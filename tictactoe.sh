#!/bin/bash
a="1|2|3\n4|5|6\n7|8|9"
s=x
while [ -z "${a##*[0-9]*}" ];do
echo -e $a
read d
b="${a/$d/$s}"
if ! [ $a == $b ]
then
a=$b
s=$(echo $s|tr xo ox)
fi
done
echo -e $a
