#!/data/data/com.termux/files/usr/bin/bash

THRESHOLD=80

echo "===== DISK MONITORING ====="

df -h | awk -v threshold="$THRESHOLD" '
NR == 1 {print; next}
{
    usage = $5
    gsub("%", "", usage)

    if (usage >= threshold) {
        print $0
        print "WARNING: Disk usage is above threshold!"
    }
}'
