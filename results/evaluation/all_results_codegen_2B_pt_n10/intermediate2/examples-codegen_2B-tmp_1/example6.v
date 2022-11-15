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

y gate( clk,
       reset, 
       register reg <14:0> q,
       q' IMPDEV width[3:0]
); 

x1 gate( clk,
        reset,
        register reg <16:0> w1,
        register inter sensor v1
); 
x2 gate( clk,
        reset,
        register reg <16:0> w2,
        register inter sensor v2
); 
xall gate( clk,
          reset,
          register reg <16:0> wx,
          register inter sensor vx
); 
y1 gate( clk,
        reset,
        register reg [14:0] q1,
        register inter sensor v1
); 
y2 gate( clk,
        reset,
        register reg [14:0] q2,endmodule
