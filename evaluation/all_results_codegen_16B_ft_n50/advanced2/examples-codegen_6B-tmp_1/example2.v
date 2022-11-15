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
	 	if (slowena) 
 	 	begin
	 	 	if (reset) 
	 	 	begin
	 	 	 	q <= q[0:0];
	 	 	end
	 	 	else 
	 	 	begin
	 	 	 	if (q != 9) 
	 	 	 	begin
	 	 	 	 	q[0] <= ~q[0];
	 	 	 	 	q[1] <= q[0];
	 	 	 	 	q[2] <= q[1];
	 	 	 	 	q[3] <= q[2];
	 	 	 	end
	 	end
end
end
endmodule
