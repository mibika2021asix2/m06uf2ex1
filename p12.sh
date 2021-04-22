#!/bin/bash

function val_ip()
  {
  local  ip=$1
  local  stat=1
  if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]];
  then
  OIFS=$IFS
  IFS='.'
  ip=($ip)
  IFS=$OIFS
  [[ ${ip[0]} -le 255 && ${ip[1]} -le 255  && ${ip[2]} -le 255 && ${ip[3]} -le 255 ]]
  stat=$?
  fi
  return $stat
  }

# Comienzo del programa
echo "   Ingrese direccion IP a validar : "
read dip
if val_ip $dip;
then 
	sudo nmap $dip
	exit 0
else
echo "NO es una IP correcta";
exit 10
fi

