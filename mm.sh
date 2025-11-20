#!/bin/bash
# ---------------------------------------------
# MagicMirror startup script for Raspberry Pi
# ---------------------------------------------

# Wait a bit before starting (optional)
sleep 20

# Navigate to MagicMirror directory
cd /home/pi/MagicMirror/ || exit

# Launch MagicMirror in the foreground
npm start  

# to stop the mirror, use Ctrl + C in the terminal

# ---------------------------------------------
# To stop MagicMirror later:
# kill $(cat /home/pi/MagicMirror/mm.pid)
# rm /home/pi/MagicMirror/mm.pid


# To start/stop MagicMirror using pm2 commands
# cd ~/MagicMirror
# to start the mirror in the background
# pm2 start npm --name "mm" -- start
# swtich between tabs
# Alt + Tab to select the terminal
# then to stop run this command
# pm2 stop mm
# ---------------------------------------------




