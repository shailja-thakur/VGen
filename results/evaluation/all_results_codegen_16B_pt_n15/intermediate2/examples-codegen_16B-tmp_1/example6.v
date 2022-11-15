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
    always @ (posedge clk or (reset == 1'b0))
        begin
        	case (q[2:0])
            	1'b0 : q <= 1 ;
            	1'b1 : q <= 1 ;
            	default : q <= q[0] + 1;
            endcase

endmodule
