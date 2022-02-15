#!/usr/local/bin/node
// Author Robert D
// Date: 1/31/2022
// Creates the requested file containing ip addresses
// Written to run on node, not quite a standard scripting language 

const fs = require('fs');

const base = "192.168.2.";
const output_file_name = "Ec554_IPs.txt";

for (let i = 0; i <= 254; i++) { // 0-254 inclusive
    fs.appendFileSync(output_file_name, base + i + "\n"); // appends, if the file exists you'll get duplicate data
}

console.log(`Output file created: ${output_file_name}`);