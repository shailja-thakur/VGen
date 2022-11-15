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
	if (slowena) //if slowena is 1 then only do work
	if (~q[3] && q[0] && q[3:1] < 4'b1111)	
	begin
	q[3:1] = q[3:1] + 2'b1;
	q[0] = 0;
	end else if (reset) //if master reset is high then set q to 00;
	q = 4'b0;
end
end
endmodule
