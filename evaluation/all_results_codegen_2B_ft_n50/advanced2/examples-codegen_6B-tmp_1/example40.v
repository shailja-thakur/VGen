// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//	In this posedge case, the only time q could be 9 is if we have 
//	incremented the counter to 9.

	always @(posedge clk or posedge slowena or posedge reset) begin
 	if (reset) q = 4'd0;
	
	//if (slowena) begin
	if (ena) begin
	if (q == 4'd9) q = 4'd0; // If q is 9, then we are already in the 10s digit
	else q = q + 1; // Otherwise, if we have reached the end of the current digit, then increment to the next digit. (q+1 because q is 4 bits.)
	end 
	
	end
	
endmodule
