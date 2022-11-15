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
reg incr;
always @( posedge clk or negedge reset )
    begin
	    if( !reset ) begin
		         incr <= 1'd0;
			     q    <= 4'd0;
			end
		    else if( clk ) incr <= incr+1'd1; 
		end
endmodule
