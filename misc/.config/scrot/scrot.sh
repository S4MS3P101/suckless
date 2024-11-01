#!/bin/sh

name=$(date +"%Y%m%d%H%M")
mkdir -p ~/Pictures/Screenshots/ && scrot ~/Pictures/Screenshots/$name.png && notify-send "New screenshot" "Screenshot $name.png saved in <i>~/Pictures/Screenshots</i>" -i image-x-generic
