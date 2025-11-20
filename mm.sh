#!/bin/bash
# sleep for 20s before starting
sleep 20

# go to MagicMirror directory
cd /home/pi/MagicMirror/ || exit

# launch MagicMirror in the background and redirect output to a log file
DISPLAY=:0 npm run start > mm.log 2>&1 &

# save the process ID to a log file so you can stop it later
echo $! > mm.pid

echo "MagicMirror started in the background. PID saved in mm.pid"

# To stop MagicMirror later:
kill $(cat /home/pi/MagicMirror/mm.pid)
rm /home/pi/MagicMirror/mm.pid


# cd ~/MagicMirror
# to start the mirror in the background
# pm2 start npm --name "mm" -- start
# then to stop run this command
# pm2 stop mm


