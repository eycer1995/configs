#! /usr/bin/env sh
#
killall -q polybar

echo "---" tee -a /tmp/polybar.log
polybar mainbar-i3 2>&1 | tee -a /tmp/polybar.log & disown

echo "bar launched."

