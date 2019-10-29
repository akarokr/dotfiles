#!/bin/zsh

gtf 1920 1050 60

xrandr --newmode "1920x1050_60.00"  168.01  1920 2040 2248 2576  1050 1051 1054 1087  -HSync +Vsync

xrandr --addmode Virtual1 "1920x1050_60.00"

xrandr --output Virtual1 --mode "1920x1050_60.00"
