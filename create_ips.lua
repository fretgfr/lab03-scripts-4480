#!/usr/bin/python3
-- Authors: Robert D and Caroline B
-- 1/28/22
-- Creates the requested file containing ip addresses

local base = "192.168.2."
local output_file_name = "Ec554_IPs.txt"

local output_file = io.open(output_file_name, "w")
for i = 0, 254, 1 do
    output_file:write(base .. i .. "\n")
end

output_file:close()

print("Output file created: " .. output_file_name)