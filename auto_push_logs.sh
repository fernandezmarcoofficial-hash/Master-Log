#!/bin/bash
cd ~/Master_Logs

# Add all changes
git add .

# Commit with timestamp
git commit -m "Automated log update: $(date '+%Y-%m-%d %H:%M')"

# Push to GitHub
git push origin main
