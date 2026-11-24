#!/data/data/com.termux/files/usr/bin/bash

echo "===== SYSTEM HEALTH REPORT ====="

echo "Date and Time:"
date

echo ""
echo "Current User:"
whoami

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Memory Information:"
free -h

echo ""
echo "===== REPORT COMPLETED ====="
