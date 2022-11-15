// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If q is 9, do not increment it.
// When slowena is high, the output q is not incremented unless it is 9.
// The output q is reset when reset is high.

// The state machine below assumes that the clock is one cycle in advance.
// The ena input is only looked at when the q is 0.

always @(posedge clk or negedge reset) begin
	if (~reset) q <= 0;
	else if (~slowena) q <= q;
	else if (q == 9) q <= 0;
	else if (slowena) q <= q + 1;
end

endmodule
