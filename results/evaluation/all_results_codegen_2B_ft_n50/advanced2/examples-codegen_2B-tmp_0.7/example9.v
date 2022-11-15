// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If the ena input is low, q will be left alone and the q output will be high.

// On the negative edge of the clock:
// if reset is high, the output q will be reset to 0.
// Otherwise, only decrement the output q if the ena input is low and q is not 0

always @(posedge clk)
begin
	if (reset)
	begin
	q <= 0;
	end
	else
	if (slowena)
	begin
	if (q == 4'b1001)
	begin
	q <= 0;
	end
	else
	begin
	q <= q + 1'b1;
	end
	end
end
endmodule
