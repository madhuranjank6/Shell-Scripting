#!/bin/bash

echo "System Information:"

# Display the hostname
hostname=$(hostname)
echo "Hostname: $hostname"

# Display the operating system information
os_info=$(cat /etc/os-release)
echo -e "Operating System:\n$os_info"

# Display the CPU information
cpu_info=$(cat /proc/cpuinfo)
echo -e "CPU Information:\n$cpu_info"

# Display the memory information
memory_info=$(free -h)
echo -e "Memory Information:\n$memory_info"
