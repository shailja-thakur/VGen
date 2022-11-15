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
wire [3:0] v;
assign q[3:0] = ( 
    reset = 1 ? 0 : ( 
        clk == 1 ? 1 : 
        v[0] == 12 ? 1 : 
        v[0] == 1 ? 1 : 
        v[0] == 2 ? 1 : 
        v[0] == 3 ? 1 : 
        v[0] == 4 ? 1 : 
        v[0] == 5 ? 1 : 
        v[0] == 6 ? 1 : 
        v[0] == 7 ? 1 : 
        v[0] == 8 ? 1 : 
        v[0] == 9 ? 1 : 
        v[0] == 10 ? 1 : 
        v[0] == 11 ? 1 : 0 
    ) 
); 
// read v
wire [3endmodule
