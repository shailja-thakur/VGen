// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// In any of these cases, slowena is the one that controls the timing of the counter.

always @(posedge clk or posedge reset)
	begin
	if (reset) q <= 4'b0000;
	else if (slowena) begin
	if (q == 9) q <= 4'b0000;
	else q <= q + 1'b1;
	end
	end
endmodule
