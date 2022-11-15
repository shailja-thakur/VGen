// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If the ena input is low, reset the output q to CS9.
// Keep the state of q until the next positive edge of the clock.
	reg [3:0] oldq; 
	
always @ (posedge clk)
//assert reset or update state on each clock event
begin
	if (reset)
	// reset count
	q <= 4'b0;
	else if (slowena)	
	begin
	// whenever the ena line goes high,
	// load the output with the old value.
	q <= oldq;
	// q gets oldq if the previous this case was slow because the ena channel
	// went high then low.
	oldq <= q;
	if (q == 7)	// inhibit counting further if at 9.
	q <= CS9;
	else 
	q <= q + 1;end
end
endmodule
