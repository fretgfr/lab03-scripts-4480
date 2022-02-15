// Author: Robert D
// Date 2/15/2022
// Creates the requested file containing ip addresses
// Written in Cpp

#include <iostream>
#include <fstream>

using namespace std;

#define OUTPUT_FILE_NAME "Ec554_IPs.txt"
#define BASE "192.168.2."

int main(int argc, char const *argv[])
{
    ofstream output_file;
    output_file.open(OUTPUT_FILE_NAME);
    
    for (int i = 0; i <= 254; i++) // 0-254 inclusive
    {
        output_file << BASE << i << endl;
    }

    output_file.close(); 

    cout << "Output file created " << OUTPUT_FILE_NAME << endl;
    return 0;
}

