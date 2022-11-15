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
// and q to Q_next
value_flip_flop value_taps45 (
	.clk	( clk	),
	.reset	( reset	),
	.set	( 1'b0	),
	.feedback( feedback_value )
);
always @ (posedge clk or posedge reset)
begin
if (reset)
	r_reg <= 5'b00000;
else
	r_reg <= r_next;
end

genvar i; 
generate for (i=5; i>3; i=i-1) 
	begin: tap_loop
	manula(r_reg[i-3]^r_reg[i-2]^r_reg[i-4]^feedback_value,r_next[i-1]);
	end
	// crc_poly =endmodule
