// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Otherwise, q is not incremented. 

// If reset is not being asserted, the q output is a serial counter. The "is low" just means this is 0.

always_ff @(posedge clk or ~reset)
	if (reset)
	// on the reset assertion clear all bits
	q <= 4'b0;
	else 
	// if the set is not active, clear it
	if (~slowena)
	begin
	q[3:0] <= 0;
	q[4] <= 0;
	end
	else
// if the ena input is high, and the output q is not 9, then increment
	if (slowena && q < 9)
	q[3:0] <= q + 1;
	else 
	// otherwise do nothing
	if (~slowena && q != 9)
	q[endmodule
