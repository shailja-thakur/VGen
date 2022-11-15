// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
	
always @(posedge clk or posedge slowena or posedge reset)
	begin
	 
	 if (reset) q <= 4'd0; // set q to 0 if reset is high
	 
	 else if (slowena) begin // only increment the q if slowena is high
	 
	 if (q == 9) q <= 4'd0; // if q reaches 9, reset it to 0
	 else q <= q + 1; // otherwise, increment the count
	 
	 end
	 
	 
endmodule
