// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Increment the output by 1 if the output is 9 and the slowena is 1.
// Note: This code does not count towards the overall carry validity.

// As of 3/4/2014, this works for any non-negative sequence of inputs including [9,9,9,0].
// Since I'm using a decade counter, it reads [9,9,9,0] as {9,9,9,0}.

	always @(posedge clk)
	begin
	if (slowena) begin
	if (reset)
	q <= -'b0110000111111;
	else if (q == 9 && slowena)
	q <= 0;
	else if (slowena==0 && fastena==0)
	q <= q + 1;
	end
end
endmodule
