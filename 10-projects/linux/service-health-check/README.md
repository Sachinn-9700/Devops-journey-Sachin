# Service & Tool Health Check Script

## What it does
Checks the status of common Linux services and tools:
- apache2
- nginx
- curl
- git

The script detects whether:
- a service is running
- a service is stopped
- a service is not installed
- a CLI tool is installed

## Why this is useful
In DevOps environments, verifying service availability and required tools
is a common operational task during server setup and troubleshooting.

## Bash concepts used
- arrays
- for loop
- variables
- if-else conditions
- systemctl
- command existence check

## How to run
```bash
chmod +x service_check.sh
./service_check.sh
