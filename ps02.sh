#!/bin/bash



function carpetas(){
	
	opcion = "y"

while [ "$opcion" = "y"]
do


clear

echo "nombre de una carpeta:"
read carpeta

cd /var

if [[ ! -e $carpeta ]]
then
	 sudo mkdir /var/$carpeta
fi

sudo cp /etc/ssh/sshd_config /var/$carpeta
sudo cp /etc/cups/cupsd.conf /var/$carpeta

echo "Vols continuar:"
read $opcion2

if ["$opcion2" = "y"]
then
break;
fi

done
}
carpetas
exit 5
