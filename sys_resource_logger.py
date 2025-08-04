import time
import psutil

with open("sys_monitor.log", "w") as log:
    for _ in range(10):
        cpu = psutil.cpu_percent(interval=1)
        mem = psutil.virtual_memory().percent
        log.write(f"CPU: {cpu}% | MEM: {mem}%\n")
        print(f"Logged CPU: {cpu}% | MEM: {mem}%")
