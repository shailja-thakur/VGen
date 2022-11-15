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
always@( posedge clk, posedge reset )
 if( reset==1'b1)
 q=4
 else if(q==11) // extract binary output, convert to decimal
5'd1	
1
assign q=q-1
endmodule
