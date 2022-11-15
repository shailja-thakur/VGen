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
assign q = r_reg ^ ( (r_reg & r_next) >> 1 );
always@ ( posedge clk, posedge reset ) begin
	if( reset ) begin
// default value of r
r_reg <= 1 << 5;
	end else begin
// next value
r_reg <= r_next;
// assign value of this term to a temporary register
// and multiply value assignment with coefficient value of 2, as in
// r_reg = feedback_value
"p = " & r_reg.as_text
// after utilizing last X bits, replace with the value
r_next <= (lfsr_terms >> x + clk);
// concatenation to be indexed
lfsr_terms[x] <= feedback_value;
	end
end
// instantiate the Galois LFSR term
// of the number of bits specified by the user, withendmodule
