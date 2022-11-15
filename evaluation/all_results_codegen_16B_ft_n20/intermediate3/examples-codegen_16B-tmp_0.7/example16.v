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
// assign feedback value concatenated with 4 MSBs of r_reg to r_next
// assign r_reg to the output q
assign q = r_reg;
// define the function of the feedback value
assign feedback_value = r_reg[4] ^ r_reg[2];
// define the state transition for r_reg
assign r_next = (r_reg[4] ^ r_reg[0]) ^ feedback_value;
// define the reset condition for r_reg
assign r_reg = reset ? 5'b10000 : r_next; 
endmodule