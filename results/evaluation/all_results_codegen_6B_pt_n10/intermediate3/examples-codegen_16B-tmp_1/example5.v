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
// write comments for best coding style
// first assign initial conditions
initial 
begin
	r_reg = 5'h1;
end
// to feed the feedback to LUT
assign feedback_value = (r_reg & ~q[0]) ^ q[4];
// to generate 10 output bits
assign q[4] = r_reg	[4] ^ r_reg	[3];
assign q[3] = r_reg	[4] ^ r_reg	[2];
assign q[2] = r_reg	[4] ^ r_reg	[1];
assign q[1] = r_reg	[4] ^ r_reg	[0];
assign q[0] = r_reg	[4];
// assign clk as the clock
assign r_next = (clk && reset) ? r_endmodule
