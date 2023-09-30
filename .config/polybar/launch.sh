#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch full bar
#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar zxr 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar left 2>&1 | tee -a /tmp/polybar1.log &
disown
polybar center 2>&1 | tee -a /tmp/polybar2.log &
disown
polybar right 2>&1 | tee -a /tmp/polybar3.log &
disown
# Launch Islands bar

echo "Bars launched..."
