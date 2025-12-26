# Linux Basics – DevOps Usage

This document lists Linux commands I used during my DevOps learning journey
and beginner automation projects.
The focus is on practical system usage and operational tasks, not Linux theory.

---

## System & Resource Monitoring
Commands used to inspect system health and resource consumption.

- htop        → CPU and memory usage
- uptime      → system load and uptime
- free -m     → memory usage
- df -h       → disk usage

---

## User & Group Management
Basic access and permission management tasks.

- useradd        → create users
- groupadd       → create groups
- usermod -aG    → add user to group
- groups         → verify group membership
- groupdel       → remove groups

---

## File Permissions & Ownership
Managing access control for files and directories.

- chmod      → modify file permissions
- chown      → change file owner/group
- ls -l      → verify permissions and ownership

---

## Services & Logs
Service management and health checks.

- systemctl status <service>   → check service state
- systemctl start/stop         → manage services
- systemctl is-active          → verify if service is running
- journalctl                   → view service logs

---

## Networking & Connectivity
Simple connectivity and service validation.

- ping      → network connectivity check
- curl      → HTTP/service testing

---

## File Search & Maintenance
Commands used in cleanup and maintenance scripts.

- find      → locate files based on age and type

---

## Backup & Archiving
Commands used in backup automation scripts.

- tar       → create compressed backups
- date      → generate timestamped backup names
- mkdir -p  → create directories safely

---

## Tool & Package Validation
Used during environment setup and scripting.

- command -v     → verify if a tool is installed
- apt / yum      → install and update packages
