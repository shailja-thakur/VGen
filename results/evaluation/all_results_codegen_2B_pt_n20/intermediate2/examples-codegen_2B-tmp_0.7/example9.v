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
    void reset_handler() { 
        q = 1;
    }

always @(posedge clk) // This is a counter that counts from 1 to 12
    int adder() {
        if (q == 12) {
            if (q < 13) {
                q = q + 1;
            } else {
                q = 1;
            }
        }
        return q;
    }

// define input signals
input clk;
input reset;

// define output signals
reg [3:0] q;
initial begin 
    q = 1;
end

void main () {
    
    // the following code is used to generate random numbers
    
    // the seed is 1234
    if (reset != 1) {
        int seed = 1234;
        int iendmodule
