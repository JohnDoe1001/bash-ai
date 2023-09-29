#!/bin/sh

clear
echo Welcome to Bash-AI v0.0.0.1-alpha!
echo Please choose your RAM disk size (in megabytes)
echo (recommended size: 256MB)
read size
echo Please choose your mount point.
read mount
[[ -z "$size" ]] && $size=256
[[ -z "$mount" ]] && $mount="./aidata/qindex"
cd /
sudo mkdir 
mount -t tmpfs -o $size 
