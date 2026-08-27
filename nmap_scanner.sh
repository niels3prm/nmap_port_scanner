#!/bin/bash
echo ""
echo "N M A P - P O R T - S C A N E R			"
echo ""
echo "--------------------------------------------------------"
echo "[+] 1 Scanning ports 1 to 1024 (Quick)"
echo "[+] 2 Scaning ports 1 to 65535 (Full)"
echo "[+] 3 scan top 1000 ports (Fast)"
echo "[+] 4 scan common ports (80,443,..)"
echo "[+] 5 OS detection + Version detection"
echo "[+] 6 Aggressive scan (-A)"
echo "[+] 7 Vulnerability scan (--script=vuln)"
echo "[+] 8 Show target info"
echo "[+] 0 Exit"
echo ""
read -p "Enter an option: " input

#scan ports 1-1024

if [ $input == "1" ]

then
	read -p "Enter the IP/Domain: " ip
	clear
	echo "[+] 1 -sS (TCP SYN Scan)"
	echo "[+] 2 -sT (TCP Connect Scan)"
	echo "[+] 3 -sU (UDP Scan)"
	echo "[+] 4 -sA (TCP ACK Scan)"
	echo "[+] 5 -sW (TCP Window Scan)"
	echo "[+] 6 -sM (TCP Maimom Scan)"
	echo "[+] 7 -sN (Null / FIN / Xmas Scans)"
	echo "[+] 8 -sO (IP Protocol Scan)"
	echo "[+] 9 -sZ (SCTP INIT Scan)"
	echo ""
	read -p "Enter the switch you're looking for: " switch
	echo ""

	if [ $switch == "1" ]

	then
		echo "Scanning the $ip (1-1024 ports)"
		nmap -sS -p 1-1024 $ip

	elif [ $switch == "2" ]
	then
		echo "Scanning the $ip (1-1024 ports)"
		nmap -sT -p 1-1024 $ip

	elif [ $switch == "3" ]
	then
		echo "Scanning the $ip (1-1024 ports)"
		nmap -sU -p 1-1024 $ip

	elif [ $switch == "4" ]
	then
		echo "Scanning the $ip (1-1024 ports)"
		nmap -sA -p 1-1024 $ip

	elif [ $switch == "5" ]
	then
		echo "Scanning the $ip (1-1024 ports)"
		nmap -sW -p 1-1024 $ip

	elif [ $switch == "6" ]
	then
		echo "Scanning the $ip (1-1024 ports)"
		nmap -sM -p 1-1024 $ip

	elif [ $switch == "7" ]
	then
		echo "Scanning the $ip (1-1024 ports)"
		nmap -sN -p 1-1024 $ip

	elif [ $switch == "8" ]
	then
		echo "Scanning the $ip (1-1024 ports)"
		nmap -sO -p 1-1024 $ip

	elif [ $switch == "9" ]
	then
		echo "Scanning the $ip (1-1024 ports)"
		nmap -sZ -p 1-1024 $ip

	else
		echo "Invalid input, Please try again"
	fi

#-------------------------------------------------
#scan port 1-65535

elif [ $input == "2" ]

then
	read -p "Enter the IP/Domain: " ip
	clear
	echo "[+] 1 -sS (TCP SYN Scan)"
	echo "[+] 2 -sT (TCP Connect Scan)"
	echo "[+] 3 -sU (UDP Scan)"
	echo "[+] 4 -sA (TCP ACK Scan)"
	echo "[+] 5 -sW (TCP Window Scan)"
	echo "[+] 6 -sM (TCP Maimom Scan)"
	echo "[+] 7 -sN (Null / FIN / Xmas Scans)"
	echo "[+] 8 -sO (IP Protocol Scan)"
	echo "[+] 9 -sZ (SCTP INIT Scan)"
	echo ""
	read -p "Enter the switch you're looking for: " switch
	echo ""

	if [ $switch == "1" ]

	then
		echo "Scanning the $ip (1-65535 ports)"
		nmap -sS -p- $ip

	elif [ $switch == "2" ]
	then
		echo "Scanning the $ip (1-65535 ports)"
		nmap -sT -p- $ip

	elif [ $switch == "3" ]
	then
		echo "Scanning the $ip (1-65535 ports)"
		nmap -sU -p- $ip

	elif [ $switch == "4" ]
	then
		echo "Scanning the $ip (1-65535 ports)"
		nmap -sA -p- $ip

	elif [ $switch == "5" ]
	then
		echo "Scanning the $ip (1-65535 ports)"
		nmap -sW -p- $ip

	elif [ $switch == "6" ]
	then
		echo "Scanning the $ip (1-65535 ports)"
		nmap -sM -p- $ip

	elif [ $switch == "7" ]
	then
		echo "Scanning the $ip (1-65535 ports)"
		nmap -sN -p- $ip

	elif [ $switch == "8" ]
	then
		echo "Scanning the $ip (1-65535 ports)"
		nmap -sO -p- $ip

	elif [ $switch == "9" ]
	then
		echo "Scanning the $ip (1-65535 ports)"
		nmap -sZ -p- $ip

	else
		echo "Invalid input, Please try again"
	fi

#-----------------------------------------------------
#top port scan

elif [ $input == "3" ]

then
	read -p "Enter the IP/Domain: " ip
	echo "Scanning the $ip (top ports 1000)"
	nmap --top-ports 1000 $ip

#------------------------------------------------------
#custom ports scan

elif [ $input == "4" ]

then
	read -p "Enter the IP/Domain: " ip
	clear
	read -p "Enter the port (443,80,..): " port
	clear
	echo "[+] 1 -sS (TCP SYN Scan)"
	echo "[+] 2 -sT (TCP Connect Scan)"
	echo "[+] 3 -sU (UDP Scan)"
	echo "[+] 4 -sA (TCP ACK Scan)"
	echo "[+] 5 -sW (TCP Window Scan)"
	echo "[+] 6 -sM (TCP Maimom Scan)"
	echo "[+] 7 -sN (Null / FIN / Xmas Scans)"
	echo "[+] 8 -sO (IP Protocol Scan)"
	echo "[+] 9 -sZ (SCTP INIT Scan)"
	echo ""
	read -p read -p "Enter the switch you're looking for: " switch
	echo ""
	
	if [ $switch == "1" ]

	then
		echo "scaning the $ip:$port"
		nmap -sS -p $port $ip

	elif [ $switch == "2" ]
	then
		echo "scaning the $ip:$port"
		nmap -sT -p $port $ip

	elif [ $switch == "3" ]
	then
		echo "scaning the $ip:$port"
		nmap -sU -p $port $ip

	elif [ $switch == "4" ]
	then
		echo "scaning the $ip:$port"
		nmap -sA -p $port $ip

	elif [ $switch == "5" ]
	then
		echo "scaning the $ip:$port"
		nmap -sW -p $port $ip

	elif [ $switch == "6" ]
	then
		echo "scaning the $ip:$port"
		nmap -sM -p $port $ip

	elif [ $switch == "7" ]
	then
		echo "scaning the $ip:$port"
		nmap -sN -p $port $ip

	elif [ $switch == "8" ]
	then
		echo "scaning the $ip:$port"
		nmap -sO -p $port $ip

	elif [ $switch == "9" ]
	then
		echo "scaning the $ip:$port"
		nmap -sZ -p $port $ip

	else
		echo "Invalid input, Please try again"
	fi

#----------------------------------------------------------------
#OS detection + Version detection

elif [ $input == "5" ]

then
	read -p "Enter the IP/Domain: " ip
	clear
	echo "OS detection $ip"
	nmap -O -sV $ip

#-------------------------------------------------
#Aggressive scan

elif [ $input == "6" ]

then
	read -p "Enter the IP/Domain: " ip
	clear
	echo "Aggressive scan $ip"
	nmap -A $ip

#----------------------------------------------------------
#Vulnerability scan

elif [ $input == "7" ]

then
	read -p "Enter the IP/Domain: " ip
	clear
	read -p "Enter the port (443,80,..): " port
	clear
	echo "vulnerability scan $ip:$port"
	nmap -p $port --script=vuln $ip

#-------------------------------------------------
#show target info

elif [ $input == 8 ]

then
	read -p "Enter the IP/Domain: " ip
	echo "target info $ip"
	nmap -sV -O -sC $ip

#------------------------------------------------
#exit

elif [ $input == "0" ]

then
	exit 0
else
	echo "Invalid input, Please try again"
fi