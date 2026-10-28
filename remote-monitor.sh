#!/bin/bash

if ssh -o BatchMode=yes -o ConnectTimeout=5 macmini 'true'; then
    echo "SSH connection successful"
else
    echo "ERROR: Cannot connect to Mac mini"
    exit 1
fi


## Variables
hostname=$(ssh macmini hostname)
uptime=$(ssh macmini uptime)
diskspace=$(ssh macmini df -h /)
top_processes=$(ssh macmini ps -axo pid,%mem,comm | sort -k2 -nr | head -n 5)
memory=$(ssh macmini 'top -l 1 | grep PhysMem')

## Name of the script 

echo '===Remote Server Monitor==='

## Echos in terminal

echo "Hostname:" 
echo "$hostname"
echo "Uptime:" 
echo "$uptime"
echo "Diskspace:" 
echo "$diskspace"
echo "Top processes:" 
echo "$top_processes"
echo "Memory:" 
echo "$memory"
