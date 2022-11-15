// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low



// A design for simulating the adder 

module sc_adder_8(s, cout, x, y, cin
);

input [7:0] x, y;input cin; // I/O signals will be explained later 
output [7:0] s;output cout; // again, I/O signals will be explained later

// Initially, all the output signals are 0 
assign {cout, s} = 0;

// A full adder simulation 
// wires and regs are used to model structural full adder 

reg[7:0] x_dff, y_dff; //computer_science_not_verilog
 // 8-bit reg

// Behavioral and sequential designs

// A latch with a single input and output, when the input and output are ready both the latch 
// and the outputendmodule
