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
	if (reset)
	begin
	
	// if ena is zero, do nothing
	end
	else
	if (~slowena)
	begin
	
	// if the preset output is in fact 1
	// set q to the output of the count 8 module
	// Cycles 0 through 7
	// Output q + 1 incase the output q reaches 9
	// Reset q reset to zero when reached 9
	q <= q + 1'b1;
	end
end
endmodule
