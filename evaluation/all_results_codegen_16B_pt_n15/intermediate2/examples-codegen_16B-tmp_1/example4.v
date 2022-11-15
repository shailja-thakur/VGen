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
always_comb 
    assign q = ({q, 1, 11, 7, 9, 3, 9, 7, 3, 9, 5})[case({
            remainder(counter.q[1:0], 12), counter.q[1:0] = counter.q[1:0] + 1,
            counter.q[1:0] = 1, counter.q[1:0] = counter.q[1:0] * 3 + 10 
        })]; 

// instantiate the counter 
counter counterInst (.clk(clk), .reset(reset), .q(q)); 

// trigger the counter 
always_seq(  
    counterInst.reset(false), 
    timer(clk).elapsed(output clkRst), 
    counterInst.start(),
    clk.posedge(clkRendmodule
