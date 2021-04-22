#!/bin/bash

if [ $EUID -ne 0 ]
then 
	echo "This script must be run as root"
	exit 1
fi

function logA(){
clear

echo "Inserta un Mes, el valor insertado deben ser las 3 iniciales del mes y la primera letra en mayuscula como Apr de April "
read $mes
echo "Inserta un dia del Mes"
read $dia

sudo cat /var/log/user.log | grep "$mes $dia" >> p07.log
lineas=`sudo cat ps07.sh | wc -l`

return $lineas
}
logA


