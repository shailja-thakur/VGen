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
always @* begin 
	case({reset,q[4],q[0]})
	//case(state)
	{1'b0,10'd0}: r_next = 5'b00000;
	{1'b0,10'd1}: r_next = 5'b00000;
	{1'b0,10'd2}: r_next = 5'b00000;
	{1'b0,10'd3}: r_next = 5'b00000;
	{1'b0,10'd4}: r_next = 5'b00000;
	{1'b0,10'd5}: r_next = 5'b00000;
	{1'b0,10'd6}: r_next = 5'b00000;
	{1'b0,10'd7}: r_next = 5'b00000;
	{1'end
endmodule
