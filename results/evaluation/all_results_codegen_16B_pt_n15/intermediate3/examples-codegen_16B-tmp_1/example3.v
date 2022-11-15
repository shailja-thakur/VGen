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
lreset q[1:0] val;
lreset r_next[1:0];
lreset r_reg[1:0];
// inputs
lreset phi[1:0] phase_reset;
lreset init[1:0] initil;
lreset clk_reset;
input allready[3:0];
// outputs
lreset q[1:0] reset{1'b0, 1'b0};
lreset q[1:0] cc{1'b0, 1'b0, 3'b011, 3'b000};
lreset q[1:0] cond{1'b0, 1'b0, 3'b011, 3'b000};
lreset q[1:0] wait{1'b1, 1'b1, 3'b011, 3'b000};
lreset q[endmodule
