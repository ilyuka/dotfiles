#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/top.log 
# polybar top 2>&1 | tee -a /tmp/top.log & disown
# polybar top2 2>&1 | tee -a /tmp/top.log & disown
polybar top &
polybar top2 &


echo "Bars launched..."

