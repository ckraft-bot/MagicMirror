#!/bin/bash
# ---------------------------------------------
# MagicMirror startup script for Raspberry Pi
# ---------------------------------------------

# Wait a bit before starting (optional)
sleep 20

# Navigate to MagicMirror directory
cd /home/pi/MagicMirror/ || exit

# Launch MagicMirror in the background, log output to mm.log
DISPLAY=:0 npm run start > mm.log 2>&1 &

# Save the process ID so you can stop it later
echo $! > mm.pid

echo "MagicMirror started in the background. PID saved in mm.pid"

# ---------------------------------------------
# To stop MagicMirror later:
# kill $(cat /home/pi/MagicMirror/mm.pid)
# rm /home/pi/MagicMirror/mm.pid


# To start/stop MagicMirror using pm2 commands
# cd ~/MagicMirror
# to start the mirror in the background
# pm2 start npm --name "mm" -- start
# then to stop run this command
# pm2 stop mm
# ---------------------------------------------




