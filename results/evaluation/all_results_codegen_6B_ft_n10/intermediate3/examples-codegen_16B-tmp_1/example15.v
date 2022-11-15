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
// reset the current state to give the state that r_reg already had before a reset was performed
// xor of bit 0 and bit 3 in r_reg since the LFSR should be >= 0
assign r_next=~r_reg;
assign feedback_value=~(r_reg[3] ^ r_reg[4]);
assign q=r_reg;
assign r_reg=reset ? 5'h1 : (r_next|5'h4c);
endmodule
