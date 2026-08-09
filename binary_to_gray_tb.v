`timescale 1ns/1ps

module binary_to_gray_tb;

    reg  [3:0] binary;
    wire [3:0] gray;

    binary_to_gray uut (
        .binary(binary),
        .gray(gray)
    );

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, binary_to_gray_tb);

        $display("====================================");
        $display("     BINARY TO GRAY CODE CONVERTER");
        $display("====================================");
        $display("Time\tBinary\tGray");
        $display("-------------------------");

        binary = 4'b0000;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        binary = 4'b0001;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        binary = 4'b0010;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        binary = 4'b0011;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        binary = 4'b0100;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        binary = 4'b0101;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        binary = 4'b0110;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        binary = 4'b0111;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        binary = 4'b1000;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        binary = 4'b1001;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        binary = 4'b1010;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        binary = 4'b1011;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        binary = 4'b1100;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        binary = 4'b1101;
        #10;
        $display("%0t\t%b", $time, binary, gray);

        binary = 4'b1110;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        binary = 4'b1111;
        #10;
        $display("%0t\t%b\t%b", $time, binary, gray);

        $display("-------------------------");
        $display("Simulation completed.");
        $finish;
    end

endmodule