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
assign r_next = (reset)? 1 : (q == 5'b00000) ? {3'h1,feedback_value} : r_reg;
assign q = r_reg;
always @(posedge clk, posedge reset) begin
	if (reset) begin
	 	r_reg <= 5'b00000;
	end else begin
	 	// if q == 5'b00000 and the left bit is 1111 then set
	 	// the feedback value to be a value from 0-127,
	 	// set the other bits in the combined register value 
	 	// to all r' value, and move the other bits to r_reg
	 	if (q == 5'b00000) begin
	 	end
	 	else if (q == 5'b11001) begin
	 	end
	 endend
endmodule
