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
always @( posedge clk, posedge reset) 
	if (reset) r_reg <= 1; 	//2^4-1
	else r_reg <= r_next;

assign feedback_value = r_reg[2] ^ r_reg[3]; 

assign r_next[0] = q[0]^feedback_value;
assign r_next[1] = q[1]^feedback_value;
assign r_next[2] = q[2]^feedback_value;
assign r_next[3] = q[3]^feedback_value;
assign q = r_reg; 

endmodule
