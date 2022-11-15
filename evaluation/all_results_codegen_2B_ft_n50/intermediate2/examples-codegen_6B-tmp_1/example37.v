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
always @(posedge clk or posedge reset)
begin
	if ( clk ) begin 
	case(q)
	4'd15: q<=1'd1;
	4'd1: q<=q+1'd1;
	default: q<=q+1'd1;
	endcase
	end
	else if(reset)
	q<=1'd1;
end
endmodule
