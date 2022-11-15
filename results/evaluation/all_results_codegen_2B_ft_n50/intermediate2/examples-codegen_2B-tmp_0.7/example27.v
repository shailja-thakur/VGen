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
always @(posedge clk)
 if(reset)
 q<=1;
 else
 case(q)
 4'b1: q<=4'b1;
 4'b10: q<=4'b1;
 default: q<=q+1;
 endcase
endmodule
