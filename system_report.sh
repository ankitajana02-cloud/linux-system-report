#!/bin/bash
OUTPUT="system-report.txt"
{
echo "LINUX SYSTEM REPORT"
echo "Date: $(date)"
echo ""
echo "1. HOSTNAME"
hostname
echo ""
echo "2. KERNEL VERSION"
uname -r
echo ""
echo "3. DISK USAGE"
df -h
echo ""
echo "4. MEMORY USAGE"
free -h
echo ""
echo "5. TOP PROCESSES"
ps aux --sort=-%mem | head -n 11
} > "$OUTPUT"
echo "Report generated: $OUTPUT"
