import re

with open('/var/log/syslog', 'r') as file:
    for line in file:
        if "error" in line.lower():
            print(f"ERROR LINE: {line.strip()}")
