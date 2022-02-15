#!/usr/bin/python3
# Authors: Robert D and Caroline B
# 1/28/22
# Creates the requested file containing ip addresses

base = "192.168.2."
output_file_name = "Ec554_IPs.txt"

with open(output_file_name, "w") as fp:
	for i in range(0,255): # 0-254 inclusive
		fp.write(f"{base}{i}\n")

print(f"Output file created: {output_file_name}")
