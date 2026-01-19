import os

print("--- 🔍 DEWMIE'S SYSTEM MONITOR ---")

# 1. Check Disk Space (HDD/SSD)
print("\n[Disk Usage Info]")
os.system("df -h | grep '/$'")

# 2. Check Memory (RAM)
print("\n[Memory Usage Info]")
os.system("free -m")

print("\n-------------------------------")
