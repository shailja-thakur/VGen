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
//-------------------------------------------
always @ (tripled)
// on posedge, output is +4 manner information
// such as going from 1->12->13->14
begin 
	case(q)
	4'b1111:	q <= q + 1;
	4'b1201:	q <= 4'b1000;
	endcase
end 
assign qplus4 = q + 4;
endmodule
