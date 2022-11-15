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
always @(posedge clk, posedge reset) 
begin
 if( reset)
 r_reg <= `ERLDi;
else 
 r_reg <= r_next;
end
wire [4:0] r_nextn = ~ feedback_value[4] ^ r_reg[4]^ q[4]; // check if counter has ovf, if so reset
assign qn = ~q[4] ^ q[3] ^ q[2] ^ q[1] ^ q[0]; // MSB first in output
assign q[0] = r_reg[0]; // first-order recursive, comb-type D
assign q[1] = r_reg[1]; // second-order recursive, comb-type D
assign q[2] = r_reg[2]; // third-order recursive, comb-type D
assign q[endmodule
