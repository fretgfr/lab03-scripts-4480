// Author: Robert D
// Date 1/31/2022
// Creates the requested file containing ip addresses
// Written in C

#include<stdio.h>

int main() {
    char base[] = "192.168.2.";
    char output_file_name[] = "Ec554_IPs.txt";

    FILE *output_file = fopen(output_file_name, "w");

    for (int i = 0; i <= 254; i++) { // 0-254 inclusive
        fprintf(output_file, "%s%d\n", base, i);
    }

    fclose(output_file);
    printf("Output file created: %s\n", output_file_name);

    return 0;
}