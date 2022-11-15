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
asm
 begin
   initial begin
     r_next <= r_reg;
   end
   always equal in_bit <= 24"r_reg";
   always equal out_bit <= 32 | in_bit > r_next | (r_reg[3]>=bit'1);
   always assign input clk.posedge_delta <= ( r_next[4:0] + progmem("1")[7:0] + progmem("1")[31:24] );
   always assign_xor signal q[0:r_next] <= feedbac_value when in_bit == 0"r_next";
   always assign_xor signal q[r_next] <= feedbac_value_next when in_bit == 0"r_next";
   always assign_xor signal q[31:0] <= feedback_value when in_bit ==end
endmodule
