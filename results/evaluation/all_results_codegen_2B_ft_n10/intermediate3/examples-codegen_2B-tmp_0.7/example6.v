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
// assign q to the output r_reg
assign q = r_reg;
assign feedback_value = r_reg[4] ^ r_reg[3];
always @(posedge clk)
begin
if(reset) 
	r_reg <= 5'b00001; // on reset set the value of r_reg to 1
else
	r_reg <= r_next; // otherwise assign r_next to r_reg
end
// assign r_next to r_reg
// instantiate two 1 bit adders
// assign r_reg with the result of the addition
// assign the feedback bit concatenated with the r_reg
// assign r_next with the result of the addition
lfsr_2bit U1(.q(r_next[0]), .d(r_reg[4]), .s(r_next[1]), .k(feedendmodule
