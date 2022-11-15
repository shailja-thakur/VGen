// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk) begin
	if (reset) begin
	 // Here's what this block does:
	 // if the reset is high, set q to 0.
	 q <= 4'd0; 
	end
	else begin
	 // if reset is low OR if the output is 9, set q to 0.
	 if (q == 9 || !slowena) begin
	 // if the current value of q == 9, or if slowena is low, set q to 0.
	 q <= 4'd0;
	 end
	 // if the output is less than 9, increment q.
	 else begin
	 // if the output is not currently 9, increment q.
	 q <= q + 4'd1; 
	 end
	 end
	end
endmodule
