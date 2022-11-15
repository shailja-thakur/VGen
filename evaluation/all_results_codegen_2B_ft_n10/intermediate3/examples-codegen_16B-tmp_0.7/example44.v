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
assign q = r_reg;
// define the feedback value
assign feedback_value = q[2] ^ q[4];
// define the next state of the LFSR
always@(posedge clk) begin
	if(reset)begin
	// if reset is high
	// set r_reg to 1 (initial state)
	r_reg <= 5'h1;
	end
	else begin
	// if reset is low
	// set r_reg to x (feedback_value is the next state)
	r_reg <= feedback_value;
	end
end
endmodule
