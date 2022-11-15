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
	 	q <= 0; // Set q to 0 if reset is high.
	 
	 else
	 	begin
	 	
	 	if (slowena) // Increment q only if slowena is high.
	 	 	begin
	 	 	
	 	 	if (q == 9) // If q is 9, then set it to 0.
	 	 	 	q <= 0;
	 	 	else
	 	 	 	q <= q + 1; // Otherwise, increment q.
	 	 	
	 	 	end
	 	 	
	 	 	
	 	end
	 	
	 	
	 	
	 	end
endmodule
