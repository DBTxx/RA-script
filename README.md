#Log Analysis Script

This repository contains a Bash script for analyzing server logs.  
The goal is to identify patterns that may indicate attack attempts or suspicious access.

## Features

**Usage:**  
`./script.sh`  

**Example:**  
`./redscan3-1.sh -a access.log`

### Options

- **-a** – Detect possible XSS (Cross-Site Scripting) attacks  
- **-b** – Detect SQL Injection attempts  
- **-c** – Detect directory traversal attempts  
- **-d** – Detect possible scanner attacks (suspicious User-Agent)  
- **-e** – Identify attempts to access sensitive files  
- **-f** – Detect possible brute-force attacks on files/folders  
- **-g** – Show first and last access of a suspicious IP  
- **-h** – Locate the User-Agent used by a suspicious IP  
- **-i** – List IPs and check the number of requests  
- **-j** – Locate access to a specific sensitive file  

**===== IMPORTANT =====**  
You must provide the IP for options **-g** and **-h**.  

Example:  
`./redscan3-1.sh <OPTION> <LOG_FILE>`

---

## How to Use

1. Clone this repository:  
   `git clone https://github.com/DBTxx/RedScanAcademy-tools`

2. Give execution permission to the script:  
   `chmod +x redscan3-1.sh`

3. Run it with the desired option:  
   `./redscan3-1.sh -a`  
   (where `-a` corresponds to XSS analysis, for example)

---

## Author

Developed by **Diego** for the course *Log Analysis and Shell Script – RedScan Academy - Class 12*.
