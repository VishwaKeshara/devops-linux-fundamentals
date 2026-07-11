#!/bin/bash

###############################################################################
# Script Name : automation.sh
# Description : Basic Linux automation example for beginners.
# Author      : Vishwa Keshara
# Repository  : devops-linux-fundamentals
###############################################################################

echo "========================================"
echo "      Linux Automation Script"
echo "========================================"

echo ""

echo "Current User:"
whoami

echo ""

echo "Hostname:"
hostname

echo ""

echo "Current Working Directory:"
pwd

echo ""

echo "Current Date and Time:"
date

echo ""

echo "System Uptime:"
uptime

echo ""

echo "CPU Cores:"
nproc

echo ""

echo "Memory Usage:"
free -h

echo ""

echo "Disk Usage:"
df -h

echo ""

echo "Running Processes (Top 5):"
ps -ef | head -5

echo ""

echo "Current Directory Contents:"
ls -lh

echo ""

echo "========================================"
echo "Automation Completed Successfully!"
echo "========================================"
