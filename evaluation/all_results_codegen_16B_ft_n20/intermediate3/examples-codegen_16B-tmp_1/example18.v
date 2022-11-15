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
always @(*) 
begin 
	if(reset ) 
	begin 
 	// enable a preset number of counter cycles for the feedback register to propagate
 	// before resetting the counter and allow a reset value to be correct.
 	r_reg <= 5'h1;
 	feedback_value <= 3; 
	end
	else 
	begin 
 	r_next = 64'h0; 
 	feedback_value = 5'x0; 
	end
end 
 // assign the feedback_value to the bits positions 2 and 4 of r_reg.
// concatenate the base register r_reg with itself to get the 
// r_next
assign r_next = {r_reg[0], r_reg[1], r_reg[2], r_reg[3], ~r_reg[4endmodule
