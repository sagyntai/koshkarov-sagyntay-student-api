#!/bin/bash
# System report script - Koshkarov Sagyntay

LOG_FILE="$HOME/koshkarov-sagyntay-student-api/logs/Koshkarov_Sagyntay_system_report.log"

echo "========== SYSTEM REPORT ==========" >> "$LOG_FILE"
echo "Student: Koshkarov Sagyntay" >> "$LOG_FILE"
echo "Date: $(date)" >> "$LOG_FILE"
echo "User: $(whoami)" >> "$LOG_FILE"
echo "OS: $(uname -o) | Kernel: $(uname -r)" >> "$LOG_FILE"
echo "--- CPU ---" >> "$LOG_FILE"
lscpu | grep -E "Model name|CPU\(s\):" >> "$LOG_FILE"
echo "--- Memory ---" >> "$LOG_FILE"
free -h >> "$LOG_FILE"
echo "--- Disk usage ---" >> "$LOG_FILE"
df -h >> "$LOG_FILE"
echo "--- Available space ---" >> "$LOG_FILE"
df -h --output=source,avail >> "$LOG_FILE"
echo "===================================" >> "$LOG_FILE"
