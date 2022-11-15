// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk)
begin
	if (reset)
	begin
	// if the reset button is pushed, set the output to 0. 
	q <= 4'b0000;
	
	// ...and don't increment the counter while the output is 0.
	// (The counter counts from 1 to 10, not 0 to 9.)
	end
	else if (slowena && q < 4'b1001)
	// if the ena input is high and the output is not 9, increment the output.
	q <= q + 4'b0001;

end

endmodule
