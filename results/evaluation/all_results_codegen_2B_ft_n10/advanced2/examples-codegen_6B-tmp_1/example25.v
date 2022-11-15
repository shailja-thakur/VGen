// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
	always @(posedge clk or posedge reset) begin
//	if (reset) q <= 4'b0001; // I'm gonna set it to 0
	if (reset) q <= 4'b1111; // I'm gonna set it to 9
	else if (slowena) begin // Increment when ena is on
	if (q == 4'bz)
	q <= 4'b0000;
	else
	q <= q + 4'b0001;
	end
	end
endmodule
