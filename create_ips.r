#!/usr/bin/env Rscript
# Author: Robert D
# 2/15/22
# Creates the requested file containing ip addresses

base <- "192.168.2."
output_file_name <- "Ec554_IPs.txt"

output_file = file(output_file_name, open = "wt")

for (i in 0:254) { # 0-254 inclusive
  writeLines(paste(base, i, sep=""), output_file)
}

close(output_file)

sprintf("Output file created: %s", output_file_name)
