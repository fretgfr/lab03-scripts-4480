#/usr/bin/python
# Author: Robert D
# Date: 1/31/2022
# Creates the requested file containing ip addresses
# Similar to the Python 3 version, but written for Python 2

from __future__ import print_function

base = "192.168.2."
output_file_name = "Ec554_IPs.txt"

with open(output_file_name, "w") as fp:
    for i in range(0,255): # 0-254 inclusive
        fp.write("%s%d\n" % (base, i))

print("Output file created: %s" % output_file_name)