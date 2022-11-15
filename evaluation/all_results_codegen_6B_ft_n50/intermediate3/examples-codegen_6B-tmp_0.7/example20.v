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
always @( posedge clk or posedge reset )
begin
 if( reset )
 r_reg <= 5'b00000;
else
 r_reg <= r_next;
end
assign q[0] = r_reg[0];
assign q[1] = r_reg[1];
assign q[2] = r_reg[2];
assign q[3] = r_reg[3];
assign q[4] = feedback_value;
assign r_next[0] = r_reg[4] ^ q[0];
assign r_next[1] = r_reg[0] ^ q[1];
assign r_next[2] = r_reg[1] ^ q[2];
assign r_next[3] = r_reg[2] ^ q[3];
assign r_nextendmodule
