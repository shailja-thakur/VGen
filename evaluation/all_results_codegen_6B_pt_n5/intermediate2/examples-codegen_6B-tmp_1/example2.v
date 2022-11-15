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
always clk'='1 & !reset,
q <= {11,add(q,1)}; 
--@*/

void cover() {
    char q;
    
    // initialize q to 1
    q <= 1;
    
    // count to 12, or go back to 1 when resetting
    do {
        q = add(q,1);
    } while( q != 12);
    
    // print
    //q <= 11;
}
endmodule
