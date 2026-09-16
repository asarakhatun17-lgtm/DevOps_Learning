#!/bin/bash

echo "========================================"
echo "   🚀 BOSS'S SYSTEM HEALTH MONITOR 🚀"
echo "========================================"

# 1. Internet Check karna (Ping command se)
echo -e "\n📡 1. INTERNET CONNECTIVITY CHECK:"
ping -c 2 google.com &> /dev/null
if [ $? -eq 0 ]; then
    echo "✅ Internet is WORKING. System is online."
else
    echo "❌ ERROR: No internet connection."
fi

# 2. Disk Space Check karna (Storage kitni bachi hai)
echo -e "\n💾 2. DISK SPACE USAGE (WSL):"
df -h / | awk 'NR==2 {print "Total: " $2 " | Used: " $3 " | Free: " $4}'

# 3. RAM (Memory) Check karna
echo -e "\n🧠 3. RAM (MEMORY) USAGE:"
free -m | awk 'NR==2 {print "Total RAM: " $2 "MB | Used: " $3 "MB | Free: " $4 "MB"}'

echo -e "\n========================================"
echo "✅ System Check Completed Successfully!"