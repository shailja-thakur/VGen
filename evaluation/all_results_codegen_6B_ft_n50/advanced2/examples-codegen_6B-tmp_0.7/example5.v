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
	if(reset) // if the reset button is pressed, q is set to 0.
	 q <= 0;
	else if (slowena) // if the slowenable button is pressed, then if the counter has reached 0, q is set to 0.
	// If the counter has reached 9, then q+1 is set to 0.
	begin
	if(q == 9) q <= 0;
	else if(q == 0) q <= q + 1;
	end
 end
endmodule
