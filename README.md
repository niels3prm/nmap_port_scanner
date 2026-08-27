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
