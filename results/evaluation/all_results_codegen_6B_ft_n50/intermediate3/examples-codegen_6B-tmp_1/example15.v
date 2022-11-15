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
// and invert the output
assign q = {r_next[0], r_reg[3:1] ^ {r_reg[1], r_reg[0], {r_reg[4:2], feedback_value}}};
//assign r_next[1:0] = {r_reg[3], r_reg[2]};// instead use the xor of r_reg[3:2] and r_reg[1:0] to get the output at the next cycle
// += is non-blocking assignment which executes the statement at nextcycle
//time advances because feedback change happened at x_clock[i-1], where i=2
always @(posedge clk or posedge reset)
begin : forward_and_reverse
if (reset)
	r_reg <= 5'b00001;
else
	begin 
	if (clk)end
end
endmodule
