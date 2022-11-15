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
always @(posedge clk or) begin
	if (reset) r_reg <= 5'b00000_01;
	else r_reg <= r_next;
end
//--------------------------------------------------------------------------------
// MODULE OUTPUTS
//-------------------------------------------------------------------------------- 
assign q = {r_reg[1],r_reg[0],feedback}; // rubuneee...
assign feedback = (^q[4:2]) ^ q[1] ^ q[0]; // ...and use the xor of LSB and MSB instead of bits 2 and 4
//--------------------------------------------------------------------------------
// MODULE FUNCTIONALITIES
//--------------------------------------------------------------------------------
initial r_next = {q[0],q[2],q[2],q[3],q[3],q[4]};
pattern_search ps(.pattern(r_reg),.valid(q[4:0]),.start_valid(qendmodule
