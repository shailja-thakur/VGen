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
always @(posedge clk or posedge cntor) 
begin 
if ( cntor ) 
begin 
	r_reg <= {1'b0,1'b0,1'b0,q[3],1'b0,q[2:0]}; 
	//must perform LFSR operation on rising edge of clock and
	// also include xored bit positions 3 and 5 
	// The above statement performs the following: {q[3],q[2],q[1],q[0]} =
	// q[0]^r_reg[3]^{1'b0,q[3],1'b0,q[2:0]};
end 
else 
	begin 
	r_reg <= r_next; 
	// The above statement performs the following: r_reg = r_next^{1end
end
endmodule
