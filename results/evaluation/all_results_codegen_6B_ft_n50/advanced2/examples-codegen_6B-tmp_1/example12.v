// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or posedge reset)
	begin
	if (slowena == 1'b1 & reset == 1'b0 & q == 4'd9)
	q <= 4'd0;	// reset q to 0 if the counter is maxed out. This is the reset behaviour.

	// The counter counts up incrementing q at the positive edge of the clock.
	else if (slowena == 1'b1 & reset == 1'b0)
	q <= q + 1'd1; // Counts up the counter.

	// If the counter is reset, then set it back to 0.
	else if (slowena == 1'b0 & reset == 1'b1)
	q <= 4'd0;
	end // always posedge clk
end
endmodule
