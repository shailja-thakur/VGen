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
always@( q )
begin 
 q[0]  <= q[0]^q[1]^q[2]^q[3]^q[4]^q[5]^q[6]^q[7]^q[8]^q[9]^q[10+1]^q[11];                                                                                       
q[1]  <= q[1]^q[2]^q[3]^q[4]^q[5]^q[6]^end
endmodule
