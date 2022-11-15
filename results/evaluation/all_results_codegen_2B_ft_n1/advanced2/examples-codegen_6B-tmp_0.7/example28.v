// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Note that you must declare the q output as q[3:0] to access the internal state variable.
// Hence, if you declare the q output as a register, then the internal state variable is not accessible.

always @(posedge clk or posedge reset) 
	begin
	 	if (reset) 
	 	 	q <= 0;
	 	else 
	 	 	begin
	 	 	 	if (slowena) 
	 	 	 	begin
	 	 	 	 	if (q == 9) 
	 	 	 	 	q <= 0;
	 	 	 	 	else 
	 	 	 	 	q <= q + 1;
	 	 	 	end
	 	 	end
	 	end
endmodule
