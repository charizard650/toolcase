#!/usr/bin/bash
# This is an automated script program to load & execute a tool
# from the given list of tools...

echo "Author: "
figlet "CHARIZARD"
echo "Dedicated to: "
figlet "NAMELESS"

echo ""
echo "This is a Script to run a tool from the given list of tools..."
echo ""

while :
do

echo "Please choose a tool from the range 1-15: "
echo "1) Ping Scan"
echo "2) Nmap Scan"
echo "3) DNSenum"
echo "4) DNSrecon"
echo "5) theHarvester"
echo "6) Maltego"
echo "7) WhatWeb"
echo "8) Whois"
echo "9) NSLookup"
echo "10) Dig"
echo "11) Sublist3r"
echo "12) Fierce"
echo "13) ARPing Scan"
echo "14) HPing3"
echo "15) Mass Scan (masscan)"

echo ""
echo "Press 0 for EXIT"
echo ""

echo "Your option: "
read option

if [ $option = 0 ];
then
	break;
fi

echo "Please enter your Domain: "
read domain

echo ""
echo ""

case $option in

	1) ping -c 4 $domain
		break;;

	2) nmap -T4 $domain
                break;;

	3) dnsenum $domain
                break;;

	4) dnsrecon -d $domain
                break;;

	5) theHarvester -d $domain
                break;;

	6) maltego $domain
                break;;

	7) whatweb $domain
                break;;

	8) whois $domain
                break;;

	9) nslookup $domain
                break;;

	10) dig $domain
                break;;

	11) sublist3r -d $domain
                break;;

	12) fierce -dns $domain
		break;;

	13) arping -c 4 $domain
		break;;

	14) hping3 -c 4 $domain
		break;;

	15) masscan --$domain
		break;;

	0) break;;
	*) echo "Invlaid Domain! Please check your Domain.";;

esac
done

echo ""
echo ""
echo "...Thank You for using the Script..."
echo ""

