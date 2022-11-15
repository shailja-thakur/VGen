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
assign q = r_next;
// set the initial value of r_reg to 1
assign r_reg = 1;
// set the initial value of r_next to r_reg
assign r_next = r_reg;
// define the feedback equation
assign feedback_value = (r_reg[2] ^ r_reg[4]) & 0x3;
// define the clk as a clock input
assign clk = clk;
// define the reset as a reset input
assign reset = reset;
// define the feedback equation
assign r_reg = (r_reg << 1) | feedback_value;
// define the lfsr as a clock and reset source
assign clk = clk;
assign reset = reset;
endmodule
