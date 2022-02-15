#!/usr/bin/perl
# Author Robert D
# Date: 1/31/2022
# Creates the requested file containing ip addresses

$base = "192.168.2.";
$output_file_name = "Ec554_IPs.txt";

my @ip_list = (0..254); # 0-254 inclusive
foreach(@ip_list) {
    $ip = $base . $_;
    open(my $fh, '>>', $output_file_name) or die "Could not open file '$output_file_name' $!";
    print $fh "$ip\n";
    close $fh;
}

print "Output file created: $output_file_name\n";