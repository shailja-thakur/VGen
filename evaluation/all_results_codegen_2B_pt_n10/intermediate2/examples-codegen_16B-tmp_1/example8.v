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
always @(*)
begin
	case( {reset,q} )
	2'b00:	q <= 4'd1;	// should output 0000 because we need to be at least 0, but only get rep. if we start at 0
	2'b10:	q <= 4'd1;
	2'b11:	q <= q + 1;
	default:	q <= q + 1;
	endcase
end
endmodule
