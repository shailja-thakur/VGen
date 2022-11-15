// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// On the negative edge of the clock:
// if reset is high, replace q with a new initialized value.
// Otherwise, only decrement the output q if the ena input is high and q is 9.

localparam
CLEAR = 4'b0000,
 ONE = 4'b0001,
 ONE_DOT = 4'b0010,
 TEN = 4'b0011,
 INCR = 4'b0100,
 DECR = 4'b0101,
 THIRTEEN = 4'b0110;

always@ (posedge clk or posedge reset)
begin
	if (reset)
	begin
	q <= CLEAR;
	end
	else 
	if (slowena==1)
	begin
	case (q)
	CLEAR:
	begin
	if (reset)
	q <= CLEAR;
	end
end
end
endmodule
