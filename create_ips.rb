#/usr/bin/ruby
# Author Robert D
# Date: 1/31/2022
# Creates the requested file containing ip addresses

base = "192.168.2."
output_file_name = "Ec554_IPs.txt"

output_file = File.new(output_file_name, "w")
for i in (0..254) do # 0-254 inclusive
  ip = base + i.to_s
  output_file.syswrite(ip + "\n")
end
output_file.close

puts "Output file created: #{output_file_name}"