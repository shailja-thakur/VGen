// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
Assign( y^y' ) <= {0,0x18}
Assign( x^(!r_reg) y << 5 ): x <= { <<5, r_reg}
wire [5:0] control = {q,1{x}};
Control(wire clock,wire reset,out clk) <= {clk,reset == 0 && clock}
// RFSR graphical example
1 <= lfsr <= 4;

// Recircuit used to generate 18-bit wide binary numbers from Galois LFSR input
module rfsr(
    input clk,
    input reset,
    input [4:0] alphabet,
    flipout xor1,
    output r
);
output [15:0] y;
intB [15:0] rn0, rn1;
private wire a_0, a_1, aendmodule
