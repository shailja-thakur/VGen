// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @ (posedge clk or negedge reset)
	// preprocessor directive
	#1
	if (!reset)
	begin
	// body
	q <= 4'd0;
	end
	else if (
	`ifdef LATCHED_MEM_REST
	 slowena)
	begin
	// body
	q <= (q == 4'd9) ? 4'd0 : q + 4'd1;
	// q = (q == 9) ? 0 : q + 1;
	`else
	q <= q + 4'd1;
	// Body
	// q <= (q==9)?0:q+1;
	`endif

// The above solution works for large mbeds as it uses always block to latch 
// the value of the current count value.
// This method works for smaller mbeds where the mbedendmodule
