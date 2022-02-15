// Author: Robert D
// Date 2/15/2022
// Creates the requested file containing ip addresses
// Written in C#

using System;
using System.IO;
class Create_Ips {

    string BASE = "192.168.2.";
    string OUTPUT_FILE_NAME = "Ec554_IPs.txt";

    static void Main(string[] args) {
        StreamWriter output_file = new StreamWriter(OUTPUT_FILE_NAME);
        
        for (int i = 1; i <= 254; i++) { // 0-254 inclusive
            output_file.WriteLine(BASE + i);
        }

        output_file.Close();
        Console.WriteLine($"Output file created: {OUTPUT_FILE_NAME}");
    }
}