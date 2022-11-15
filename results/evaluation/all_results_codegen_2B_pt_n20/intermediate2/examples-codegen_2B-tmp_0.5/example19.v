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

void main() {
    counter q;
    
    // set q to 1 on reset
    q = 1;
    
    while (1) {
        // update q on the positive edge of the clock
        if (clk == 1) {
            q = (q == 12) ? 1 : q + 1;
        }
    }
}
endmodule
