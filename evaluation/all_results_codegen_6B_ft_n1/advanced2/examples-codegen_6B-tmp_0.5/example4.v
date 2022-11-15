// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// This is a decade counter, so if you are counting q out to have it count to 10, 
// then you are going to have to wait 10 full cycles to see the counter go to 0.

always @(posedge clk or posedge reset)
	begin
	if(reset)
	q <= 0;
	else if(slowena)
	begin
	if(q == 9)
	q <= 0;
	else
	q <= q + 1;
	end
	end
endmodule
