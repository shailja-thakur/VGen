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
// REGISTER_N _Register[4:0] #(5)
// q
// feedback
// -----------------------------------------------------------------------
assign q = { 1'b0,grstval, Tele_MF_reg[4:0] , r_reg[4:0]};
// special case when r_reg = 0, assign {1'b0,grstval} to r_next and set it on the feedback value
// assign {1'b0,grstval} to q 0 0 0 0
generate 
if(PL_lowp) 
	begin : LFSR_PL_lowpass
	reg [4:0] r_const;
	always @(posedge clk or posedge reset)
	begin
	if(r_const = 5'h08) //Irrelevant if r_reg is 8 or below
	grstval = 1'bend
end
endmodule
