#!/bin/bash
pid=$(ps aux --no-headers | awk '{print $1, $11}' | rofi -dmenu -p "Kill process" | awk '{print $1}')
[ -n "$pid" ] && kill "$pid"
