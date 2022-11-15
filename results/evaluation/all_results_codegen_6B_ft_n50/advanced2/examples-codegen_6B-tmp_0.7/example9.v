// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Note: The & operator is a shorthand for a latch.
// Note: The slowena input can be set to 0 if you don't want it to count.
// If you set it to 0, you'll get the same number in the output q each time the clock edge occurs. 

always @(posedge clk)
	begin
	if (reset) q=1; // set q to 9 if reset is high
	else if (slowena) begin 
	if (q == 9) q=1;
	else q=q+1;
	end
	end
endmodule
