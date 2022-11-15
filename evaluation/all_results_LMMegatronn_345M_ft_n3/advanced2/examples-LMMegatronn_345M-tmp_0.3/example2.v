// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// This implementation is an example of "count" which is 
// "one" one time.
//
// The counter is compared with the counter's clock and so it uses the
// "one" more than one clock cycle.
//
// The counter is also incremented on each clock edge.
//

reg [3:0] count;

always @(posedge clk)
	if (reset)
		count <= 0;
	else
		count <= count + 1;

always @(negedge clk)
	if (reset)
		count <= 0;
	else if (count == 9)
		count <= 0;
	else if (count == 10)
		count <= count + 1;
	else if (count == 11)
		count <= count - 1;
	else if (count == 12)
		endmodule
