#!/bin/bash
port=ENTER PORT HERE
socat -u tcp-l:$port,fork system:./command.sh &
echo "Attempted to start socat in the background"
echo "You can check with ps -C socat"
echo "If a number appears under PID, it's working"
