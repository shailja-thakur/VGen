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
always( clk or reset )
q <= (
    reset ? (1'b0) : (q[1] ? (q[0] ? (q[2] ? 12'b0 : 11'b1) : (q[2] ?  10'b0 :  9'b1))
                   : (q[2] ?  8'b0 :  7'b1))
);
endmodule
