# Nmap Port Scanner

An interactive Bash script for network scanning using Nmap, designed to simplify common port scanning tasks with a user-friendly menu.

## Features

- **Quick Scan** – Scan ports 1 to 1024
- **Full Scan** – Scan all ports 1 to 65535
- **Fast Scan** – Scan top 1000 most common ports
- **Custom Port Scan** – Scan specific ports (e.g., 80, 443)
- **OS + Version Detection** – Detect operating system and service versions
- **Aggressive Scan** – Comprehensive scan with `-A` option
- **Vulnerability Scan** – Run Nmap vulnerability scripts (`--script=vuln`)
- **Target Info** – Display detailed target information

## Prerequisites

- **Nmap** must be installed on your system
- Linux or macOS operating system
- Root/Administrator privileges (required for certain scan types)

## Installation

```bash
git clone https://github.com/niels3prm/nmap-port-scanner.git
chmod +x nmap-scanner.sh

## Run

sudo nmap_scanner.sh

## Scan Options Menu

N M A P - P O R T - S C A N E R
--------------------------------------------------------
[+] 1 Scanning ports 1 to 1024 (Quick)
[+] 2 Scanning ports 1 to 65535 (Full)
[+] 3 Scan top 1000 ports (Fast)
[+] 4 Scan common ports (80,443,..)
[+] 5 OS detection + Version detection
[+] 6 Aggressive scan (-A)
[+] 7 Vulnerability scan (--script=vuln)
[+] 8 Show target info
[+] 0 Exit

## Available Scan Types

The script supports multiple Nmap scan techniques:

    -sS TCP SYN Scan (default, requires root)

    -sT TCP Connect Scan

    -sU UDP Scan

    -sA TCP ACK Scan

    -sW TCP Window Scan

    -sM TCP Maimon Scan

    -sN Null / FIN / Xmas Scans

    -sO IP Protocol Scan

    -sZ SCTP INIT Scan
    
## Notes

    Some scan types (like -sS, -sO, OS detection) require root privileges

    Vulnerability scanning (--script=vuln) may take a long time depending on the target

    Always ensure you have proper authorization before scanning any network or system
    
