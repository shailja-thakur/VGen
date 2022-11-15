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
 if (reset) q = 4'b0; // This is a stop-state. The counter is reset.
 else if (slowena) begin // This is an active-state.
	if (q == 9) q = 4'b0; // If the counter is 9, then reset it.
	else q = q+1; // Otherwise, count up to 10.
 end
	
endmodule
