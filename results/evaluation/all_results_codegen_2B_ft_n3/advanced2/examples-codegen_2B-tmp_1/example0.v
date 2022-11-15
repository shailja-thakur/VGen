// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// In this counter, q' is really q + 1
always @ (posedge slowena) begin
 if (reset) q = 4'd0; // when reset, output q is reset to 0 state
 else if (q == 4'd9 && slowena) q = 4'd0; // count to 9 follows from 00 and ends at 9
 else if (slowena) q = q + 1; // if enable, output is incremented
 end
endmodule
