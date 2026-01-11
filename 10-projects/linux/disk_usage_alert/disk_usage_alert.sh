#!/bin/bash

THRESHOLD=80
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ $USAGE -gt $THRESHOLD ]; then
  echo "ALERT: Disk usage is above $THRESHOLD% (Current: $USAGE%)"
else
  echo "OK: Disk usage is under control (Current: $USAGE%)"
fi
