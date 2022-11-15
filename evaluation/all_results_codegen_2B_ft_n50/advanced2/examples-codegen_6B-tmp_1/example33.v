// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//
always @(posedge clk or posedge reset)
	case #1 
	({reset, slowena}) : q = ({reset, slowena})? 4'b0 : ((q == 9'b1110000) ? {q[2:0],1'b0} : q+{q[2:0],1'b0});
	endcase


endmodule
