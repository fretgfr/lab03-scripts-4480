import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

// Author: Robert D
// Date 2/15/2022
// Creates the requested file containing ip addresses
// Written in Java

class create_ips {
    final static String BASE = "192.168.2.";
    final static String OUTPUT_FILE_NAME = "Ec554_IPs.txt";

    public static void main(String[] args) throws IOException {
        FileOutputStream output_file = new FileOutputStream(OUTPUT_FILE_NAME);

        for(int i = 0; i <= 254; i++) { // 0-254 inclusive
            String to_write = BASE + i + "\n";
            output_file.write(to_write.getBytes());
        }

        output_file.close();

        System.out.println("Output file created: " + OUTPUT_FILE_NAME);
    }
}