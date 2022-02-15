# Authors: Robert D
# 2/15/22
# Creates the requested file containing ip addresses

$base = "192.168.2."
$output_file_name = "Ec554_IPs.txt"

New-Item -Path $output_file_name | Out-Null # Could error if file exists

for ($i = 0; $i -lt 255; $i++) { # 0-254 inclusive
    $ip = $base + $i
    Add-Content -Path $output_file_name -Value $ip
}

Write-Host "Output file created: $output_file_name"