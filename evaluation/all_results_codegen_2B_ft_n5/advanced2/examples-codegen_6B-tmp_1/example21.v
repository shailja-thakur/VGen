// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The slowena input is active iff the counter is 0;

always @(posedge clk or negedge reset) begin 
	if (reset == 0) begin //if reset is 0, nothing will happen, then the counter falls, and we'll have 1 count (q=4)
	 	q <= 4'b0000; 
	end
	else if (slowena == 0) begin // if the slowena input is 0, then if the counter ($q) is 9 (already max), then reset it.
	 	if (q == 4'b0110) //count only sends 7,2,5,4,7,2,5,4,7,2,5,4,7,2,5,4,7, but we start at 0 count, which means we'll have to start decrement from if we want to simulate that.
	 	 endmodule
