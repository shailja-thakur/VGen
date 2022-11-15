// This is an FSM.
module abro(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
//This is an FSM with the output z high irrprvent of the inputs a and b being low.
//For example, when b is high and a is low, the output is high.
//This is an FSM with the output z high irrprvent of the inputs a and b being low.
//So if b is low and a is high, the output is low.
//This is an FSM with the output z high irrprvent of the inputs a and b being low.
//So if b is high and a is low, the output is high.
//So if a is low and b is high, the output is low.
//So if a is high and b is low, the output is high.
//So if a is low and b is high, the output is low.

reg [15:0] output;

//This is an FSM with the output zendmodule
