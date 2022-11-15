// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or negedge reset)
	if (~reset)
	
	// Reset case
	// q = 0
	else if (slowena)
	begin
	
	// Counting case
	// q = q + 1
	q = q + 1;
	
	// Ensure that the output is always 0 when the input is 0
	end
	else
	begin
	
	// Not counting, so output q as it is
	q = q;
	
	end
endmodule
