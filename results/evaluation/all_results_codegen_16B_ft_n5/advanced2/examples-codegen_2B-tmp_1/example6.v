// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

reg [3:0] q0;
always @(posedge clk)
	if (reset || slowena == 1) begin
	 	q = q0;
	 	q0 = 4'b0;
	end else
	 	if (slowena == 1 && q < 9) begin
	 	 	q0 = q+1;
	 	 	q = q0;
	 	end


endmodule
