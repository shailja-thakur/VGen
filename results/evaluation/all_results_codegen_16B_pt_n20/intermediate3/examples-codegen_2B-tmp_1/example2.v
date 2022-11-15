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
initial begin
r_reg <= 5'b11111;
end
assign q = r_reg;
assign feedback_value = (reset) ? 5'b0 : (r_reg[0] ^ r_reg[1] ^ r_reg[2] ^ r_reg[3]) 
hsi_traverse bus
lfsr_def_reg s33
reset wire s_reset
eed > s33
 // designing the reset max length path with the above two issues
 // modified the design so that when reset is held low,
 // nothing changes in register as it will need to be created for messages
 /*
 // propagate the reset into the rest
 // assign reset only to 8,9,1,2 bits of q3,0,
 // 0 -> 0101 (25msb 6,5,4,3,2)
 // assign r_next[0] = r_regendmodule
