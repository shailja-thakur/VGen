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
always @ (posedge clk or negedge reset)
 begin
	if( (reset == 1'b0) || (q == 4'b0100) )
	 begin
	 q <= 4'b0;
	 end
	 else
	 begin
	 case(q)
	 4'b1110 : q <= 4'b0111;
	 4'b1101 : q <= 4'b1022;
	 4'b1011 : q <= 4'b1110;
	 4'b0111 : q <= 4'b1110;
	 default : q <= q + 1'b1;
	 endcase
	 end
 end
endmodule
