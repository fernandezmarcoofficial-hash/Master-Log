#!/bin/bash

# Navigate to Master_Logs repo
cd ~/Master_Logs || exit

# Phase 1: System logs
cp ~/Linux-System-Foundations/04_Logs/daily_learning_log.md ~/Master_Logs/Linux/daily_$(date +%F).md

# Phase 2: Network logs
cp ~/Linux-System-Foundations/03_Bash_Scripts/network_check_and_log.sh ~/Master_Logs/Network/network_$(date +%F).md

# Phase 3: ESP32 logs
cp ~/ESP32-Learning/Logs/daily_phase3.md ~/Master_Logs/ESP32/daily_$(date +%F).md

# Git operations
git add .
git commit -m "Automated log update: $(date '+%Y-%m-%d %H:%M')"
git push origin main
