#! /bin/bash/ -x

read -p " Enter Date :- " date
read -p " Enter Month :- " Month

#if (( (($Month <= 6 && $date <= 20) || ($Month <= 6 && $date >= 20)) && (($Month >= 3 && $date <=20) || ($Month >=3 && $date >= 20)) && (($Month == 3 && $date >= 20) || ($Month == 6 && $date <=20)) && ($date<31) ))
if (( (($Month==6 && $date<=20) || ($Month==3 && $date>=20)) || (($Month<6 && $date>0) && $Month>3) || (($Month>3 && $date>0) && $Month<6) && ($date<=31) ))
then
	echo $Month $date "True"
else
	echo "False"
fi
