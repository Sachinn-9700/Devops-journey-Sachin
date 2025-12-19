#!/bin/bash

# List of services / tools to check
SERVICES=("apache2" "nginx" "curl" "git")

echo "===== Service & Tool Health Check ====="

for SERVICE in "${SERVICES[@]}"
do
  # Check if command exists (for tools like curl, git)
  if command -v $SERVICE &> /dev/null; then
    echo "Tool '$SERVICE' is installed ✅"
    continue
  fi

  # Check service status (for system services)
  STATUS=$(systemctl is-active $SERVICE 2>/dev/null)

  if [ "$STATUS" = "active" ]; then
    echo "Service '$SERVICE' is running ✅"
  elif [ "$STATUS" = "inactive" ]; then
    echo "Service '$SERVICE' is installed but stopped ❌"
  else
    echo "Service '$SERVICE' is not installed ⚠️"
  fi
done

