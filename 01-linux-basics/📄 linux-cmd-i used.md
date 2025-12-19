# Linux Basics – DevOps Usage

This document lists Linux commands I used during my DevOps learning journey.
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
Service management and basic log inspection.

- systemctl status <service>   → check service state
- systemctl start/stop         → manage services
- journalctl                   → view service logs

---

## Basic Networking
Simple connectivity and service checks.

- ping      → network connectivity check
- curl      → HTTP service testing
