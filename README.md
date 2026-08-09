Binary to Gray Code Converter Using Verilog

📌 Project Description

This project implements a 4-bit Binary to Gray Code Converter using Verilog HDL.

Gray code is a binary numeral system in which two consecutive values differ by only one bit. It is commonly used in digital electronics to reduce errors during transitions.

🎯 Objective

The main objective of this project is to design and verify a digital circuit that converts a 4-bit binary number into its equivalent Gray code.

🔧 Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- GitHub

🧠 Working Principle

The Binary to Gray conversion is performed using XOR gates.

For a 4-bit binary number:

Binary = B3 B2 B1 B0

The Gray code is:

G3 = B3
G2 = B3 XOR B2
G1 = B2 XOR B1
G0 = B1 XOR B0

Therefore:

Gray = B3 (B3⊕B2) (B2⊕B1) (B1⊕B0)

📊 Truth Table

Binary| Gray
0000| 0000
0001| 0001
0010| 0011
0011| 0010
0100| 0110
0101| 0111
0110| 0101
0111| 0100
1000| 1100
1001| 1101
1010| 1111
1011| 1110
1100| 1010
1101| 1011
1110| 1001
1111| 1000

📁 Project Files

binary-to-gray-converter/
│
├── README.md
├── binary_to_gray.v
├── binary_to_gray_tb.v
└── simulation/
    └── waveform.vcd

💻 Verilog Design

The main module is "binary_to_gray".

module binary_to_gray (
    input  [3:0] binary,
    output [3:0] gray
);

    assign gray[3] = binary[3];
    assign gray[2] = binary[3] ^ binary[2];
    assign gray[1] = binary[2] ^ binary[1];
    assign gray[0] = binary[1] ^ binary[0];

endmodule

🧪 Testbench

The testbench applies all 16 possible 4-bit binary inputs and displays the corresponding Gray code.

A VCD waveform file is also generated for viewing the simulation in GTKWave.

▶️ Simulation Using Icarus Verilog

Step 1: Compile

iverilog -o binary_to_gray_sim binary_to_gray.v binary_to_gray_tb.v

Step 2: Run

vvp binary_to_gray_sim

Step 3: View Waveform

gtkwave waveform.vcd

🖥️ Expected Console Output

====================================
     BINARY TO GRAY CODE CONVERTER
====================================
Time    Binary  Gray
-------------------------
10      0000    0000
20      0001    0001
30      0010    0011
40      0011    0010
50      0100    0110
60      0101    0111
70      0110    0101
80      0111    0100
90      1000    1100
100     1001    1101
110     1010    1111
120     1011    1110
130     1100    1010
140     1101    1011
150     1110    1001
160     1111    1000
-------------------------
Simulation completed.

📈 Simulation Result

The simulation verifies that every possible 4-bit binary input produces the correct Gray code output.

For example:

Binary: 1010
Gray:   1111

The waveform can be opened using GTKWave to observe the changes in the binary input and Gray code output.

🌍 Applications

Binary to Gray code converters are used in:

- Rotary encoders
- Position sensors
- Digital communication systems
- Error reduction in digital systems
- Analog-to-digital converters
- Karnaugh map representations
- Digital counters

✅ Advantages

- Simple circuit design
- Requires only XOR logic gates
- Reduces transition errors
- Easy to implement using Verilog
- Fast conversion

🔮 Future Improvements

The project can be extended to:

- 8-bit Binary to Gray Converter
- Parameterized Binary to Gray Converter
- Gray to Binary Converter
- FPGA implementation
- Automatic verification using SystemVerilog

📜 License

This project is intended for educational and academic purposes.