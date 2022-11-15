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
assign r_reg = r_next ^ 5'b10000;
assign r_next = r_reg ^ q;
// assign feedback_value to the result of carrying the feedback through q and r_reg
generate
	genvar i;
	if(QUIET_RESET == 1)
	begin
	for(i = 4; i <= 5; i = i+1)
	begin
	assign feedback_value = (r_reg[i]) ? feedback_value : 1'b0;
	end
	//end for
	assign q = r_reg ^ {1'b0, feedback_value, 1'b0};
	end
	else 
	begin
	for(i = 4; i <= 5; i = i+1)
	begin
	assign feedback_value = (r_reg[i]) ? feedback_valueend
end
endmodule
