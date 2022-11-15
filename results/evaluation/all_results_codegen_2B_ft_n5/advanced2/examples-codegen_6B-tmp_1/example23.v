// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
	always @(posedge clk)
	begin 
	case ({q[3],q[2],q[1],q[0]})
	4'b0000:	q <= q;	
	4'b0001:	q <= q + 1'b1;	
	4'b0101:	q <= 2'd2;	
	4'b0110:	q <= 2'd3;	
	4'b0111:	q <= 2'd4;	
	4'b1011:	q <= 2'd5;	
	4'b1100:	q <= 2'd6;	
	4'b1101:	q <= 2'd7;	
	4'b1110:	q <= 2'd8;	
	4'b1111:	q <= 2'd9;	
	default:	q <= q;end
endmodule
