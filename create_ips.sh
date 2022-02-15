#!/bin/bash
# Authors: Robert D and Caroline B
# 1/28/22
# Creates the requested file containing ip addresses

base="192.168.2."
outputname="Ec554_IPs.txt"

for i in {0..254}; do # 0-254 inclusive
	echo "$base$i" >> $outputname # Appends the ip address to the file
done

echo "Output file created: $outputname"
