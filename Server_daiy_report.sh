#!/bin/bash

EMAIL="shindeo522@gmail.com"
SERVER_LOAD=$(uptime)
DISK_USAGE=$(df -h /)
MEMORY_USAGE=$(free -h)
REPORT="SERVER LOAD REPORT:
----------------------------
CPU and Load: $SERVER_LOAD
Disk Usage: $DISK_USAGE
Memory Usage: $MEM_USAGE"
echo "$REPORT"
