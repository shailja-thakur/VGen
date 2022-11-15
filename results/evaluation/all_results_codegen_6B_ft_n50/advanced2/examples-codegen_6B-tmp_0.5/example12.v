// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The counter should count to 10, but does not wrap to 0 to 10.

	always @(posedge clk or posedge reset)
	begin
	
	if (slowena == 1'b1 && q < 9) q <= q + 4'b1;
	
	if (reset == 1'b1) q <= 4'b0;
	
	end
	
endmodule
