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
always @ (posedge clk or posedge reset)
 if (reset)
 q <= 1;
 else if (q == 12)
 q <= 1;
 else
 q <= q + 1;
 endmodulemodule counter( 
 input clk,
 input reset,
 input [3:0] q,
 output [3:0] q_
);
// update q_ on the positive edge of the clock according to the following cases:
// on reset, assign q_ to q
// else, increment q_ by 1 
always @ (posedge clk or posedge reset)
 if (reset)
 q_ <= q;
 else
 q_ <= q + 1;
 endmodulemodule counter( 
 input clk,
 input reset,
 input [3:0] q,
 output [3:0] q_
);
// update q_ on the positive edge of the clockendmodule
