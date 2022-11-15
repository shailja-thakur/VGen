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
always @ (r_reg or posedge clk) begin
if(reset)
	{r_reg[4:0], feedback_value} = {4'b0000}; 
else
	begin
	{r_reg[4],feedbackvalue[4]}= r_next[4] ^ r_reg[3]; // feedback_value also needs the complement of xor
	
	r_reg[4:1] = r_next[4:1];
	
	r_next[4:0] = r_next[4:0]^{feedbackvalue[4], r_next[4]};
	// build trapesoidal approximation, 2 bits a time
	// expected period is ~2 -> ~500ps
	// aka the max possible period is clk period/2
	// r_reg[4], and r_reg[1] retain valuesend
end
endmodule
