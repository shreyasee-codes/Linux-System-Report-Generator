#!/bin/bash

# Define the output file
OUTPUT_FILE="system-report.txt"

# Create/overwrite the file and add a header
echo "========================================" > "$OUTPUT_FILE"
echo "         LINUX SYSTEM REPORT            " >> "$OUTPUT_FILE"
echo "         Date: $(date)                  " >> "$OUTPUT_FILE"
echo "========================================" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# 1. Hostname
echo "--- HOSTNAME ---" >> "$OUTPUT_FILE"
hostname >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# 2. Kernel Version
echo "--- KERNEL VERSION ---" >> "$OUTPUT_FILE"
uname -r >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# 3. Disk Usage
echo "--- DISK USAGE ---" >> "$OUTPUT_FILE"
df -h >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# 4. Memory Usage
echo "--- MEMORY USAGE ---" >> "$OUTPUT_FILE"
free -h >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# 5. Top Running Processes (Top 10 by CPU usage)
echo "--- TOP RUNNING PROCESSES ---" >> "$OUTPUT_FILE"
ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head -n 11 >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "========================================" >> "$OUTPUT_FILE"
echo "          END OF REPORT                 " >> "$OUTPUT_FILE"

# Print success message to the terminal
echo "Report generated successfully! Saved to: $OUTPUT_FILE"
