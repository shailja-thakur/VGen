// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @ (posedge clk or posedge reset)
begin
	if (reset)
	begin
	// reset the counter (give it a default value of 0)
	q <= 4'b0;
	end
	else if (slowena)
	begin
	// increment the counter if ena is high
	q <= q + 1'b1;
	// for hexadecimal, use counter < 4
	// (we do not know what all the ones in the number 
	// we are trying to display will do..they are all working 
	// the same way)	
	if (q < 4)
	begin
	// if counter is less than 4, 
	// display a 0 instead of a 1
	q <= 4'b0;
	end
	else if (q > 9)
	begin
	// if counter is greater thanend
end
end
endmodule
