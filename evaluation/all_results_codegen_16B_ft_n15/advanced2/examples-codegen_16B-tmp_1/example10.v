// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Not shown in the bellow table: an output of 9 that is low. That's because you
// can only count to 9 if the clock doesn't start in the 9th bit. However, if
// the clock is already in the 9th bit, then counting is obviously impossible.

always @(posedge clk)
begin: clk_block
if (reset)
q <= #2 4'b0;
else
//if (clk | (slowena && ~q[3]))
//q <= #2 (slowena ? q[2:0] + 1'b1 : q[2:0]); // Wrong! Don't rd why.
if (slowena && ena)
	begin
	q <= q + 1'b1;
	q[3] <= reset; // Gives incorrect result
	end
else
	q <= q; // Givesend
endmodule
