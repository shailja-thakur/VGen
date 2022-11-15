// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk)
 begin 
	if (reset) 
	q = 0;
	else if (slowena) begin 
	if (q == 9)
	q = 0;
	else 
	q = q + 1;
	end
end
// End of the module.
`timescale 1ns/100ps // arbitrary rule separated_data_unit and functional_level_rule by halph delays
module ird_least_squares_tb();
	reg signed [8:0] data_in_stream;
	reg signed [8:0] data_cov_in_stream;
	wire signed [8:0] data_out_stream;
	
	integer i;
	initial 
	begin
	for (i=1; i<10; i=i+2)
	begin
	dataend
end
endmodule
