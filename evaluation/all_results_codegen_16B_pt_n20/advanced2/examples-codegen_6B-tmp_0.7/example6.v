// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or posedge reset) // reset case is a bit tricky because we also send the reset output, cuz I said reset
begin
	case({reset, slowena}) // this is the 'case' statement used in the 'always' block
	//{{{1'b0, 1'b0}}, 1'b1}:	q <= 4'b0000; // this is the case that corresponds to the {{ and {}} statements
	{{1'b1, 1'b0}}, 1'b1}:	q <= q[3:1]+1'b1; // increment the current value by 1
	{{1'b1, 1'b1}}, 1'b1}:	q <= q[3:1]+1'b1; // increment the current value by 1
	// should we wrap this case to also consider {1'b1, 1end
endmodule
