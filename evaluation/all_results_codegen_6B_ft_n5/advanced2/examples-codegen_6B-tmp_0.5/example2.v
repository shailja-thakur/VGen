// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If the counter reaches 9, then reset it to 0.

always @(posedge clk or posedge reset)
	begin
	 
	if(reset)
	q <= #`D0 4'b0000;	 
	
	else if(slowena)
	begin
	if(q == 9) q <= #`D0 4'b0000;
	else q <= #`D0 q + 1'b1;
	end
	
	end

endmodule
