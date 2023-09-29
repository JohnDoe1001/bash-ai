#!/bin/sh

prompt () {
clear
echo Welcome to Bash-AI v0.0.0.1-alpha!
read -r "Please choose your RAM disk size \
(in megabytes) (recommended size: 256MB)" size
read -r "Please choose your mount point." mount
[[ -z "$size" ]] && $size=256
([[ "$size" =~ ^[0-9] ]] && "$size" -eq "$size") || prompt
[[ -z "$mount" ]] && $mount="./aidata/qindex"
([[ -d "$mount" ]] && "$mount" -eq "$mount") || prompt
cd /
sudo mkdir 
mount -t tmpfs -o $size $mount
}
