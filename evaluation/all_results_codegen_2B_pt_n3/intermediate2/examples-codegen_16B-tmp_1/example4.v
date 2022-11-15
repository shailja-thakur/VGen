// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @( posedge clk, posedge reset )
if( reset )
	q <= 4'b0000;
else
	case(q) 
	4'b0000: // q = 5 
	case(q + 4'b00001) 
	4'b0011: q <= 4'b1110; // 12 
	default: q<= q + 4'b00001; 
	endcase 
	4'b1110: q <= 4'b0001; // 5
	4'b0001: q <= 4'b1111; //1
	4'b1000: q <= 4'b1000; // 8
	4'b1001: q <= 4'b0111; //11 
	4'b0111: q <= 4'b1001; //9 
	default: q <= 4'b0000; 
	endendmodule
