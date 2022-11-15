// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Note in the output q is the active low decimal representation of the counter.
// I did not include a reset function because it is not necessary for this application.

always @(posedge clk or negedge reset) begin
	if (reset == 1'b0) begin // if reset is high, set counter to 0.
	 	q <= 4'b0000;
	end else if (slowena == 1'b1 && q < 9'b111110100) begin // if counter is 9 and slowena is high, reset the counter. 
	 	q <= 4'b0000;
	end else if (slowena == 1'b1 && q == 9'b111110100) begin // if counter is 9 and slowena is high, then set counter to 0.
	 	q <= 4'b0000;
	end else if (slowena == 1'b0endmodule
