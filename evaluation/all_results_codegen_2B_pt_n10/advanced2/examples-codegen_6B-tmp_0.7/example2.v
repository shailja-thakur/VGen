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
	if(reset) q <= 4'b0;	//On reset, set q to 0.
	else	if(slowena)	//If slowena is high, only increment q if it is not 9.
	 	if(q < 9)	//< is comparison, q < 9, so we only increment q if it is less than 9.
	 	 	q <= q + 1;	//Increment q.
endmodule
