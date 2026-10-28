## What does the script do
This is a bash script that connects to a host remotely using SSH and retrieves system information. The purpose of creating this was to practice remote administration, Bash scripting, and basic system monitoring. 

## Features
The script retrieves the following information
 - hostname
 - system uptime
 - disk space
 - top 5 processes by mem usage
 - mem usage 

 The script also checks whether SSH conneciton is successful before collecting information. If the connection fails, the script exits with an error msg. 

## Configuration
For the script to work, you'll need:
 - Bash
 - SSH configured between local and remote machines
 - SSH key authentication
 - An SSH alias named x.x.x.x in ~/.ssh/config (replace alias macmini in the script with whatever you call your machine). 

 The script currently uses macOS-specific commands for some monitoring tasks, these you can change. 

## Usage

To make the script executable, run:
chmod u+x remote-monitor.sh

To run the script, run:
./remote-monitor.sh

The script will connect to the remote machien and display the system information in the terminal.

## What I Learned 

Durig this project, I practised:

- Configuring SSH key autentication
- Running commands on remote machines
- Transfering files using SCP
- Using command substitution $() to store output in varibles 
- Using pipes to sort and filter information 
- Using output redirection (> and >>)
- Understanding the difference between local and remote command execution
- Using if, else, and exit codes for basic error handling
- Understanding why Bash variables should be quoted

I also practied troubleshooting services using systemctl and journalctl

## Future improvements
- Allow the used to specify a hostname instead of using a fixed SSH alias
- Add suport for Linux servers
- Save monitoring results to a log file 
