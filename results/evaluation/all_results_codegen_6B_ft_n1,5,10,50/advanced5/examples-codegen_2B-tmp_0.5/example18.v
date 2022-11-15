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
reg [1:0] state;
always @(posedge clk)
    if (reset == 1)
        cur_state = 0;
    else if (a == 1)
        cur_state = S1;
    else if (b == 1)
        cur_state = S2;
    else
        cur_state = S3;
    next_state = (cur_state + 1) % 4;
    state = cur_state;
    if ((a == 1) && (b == 1))
        z = 1;
    else if ((a == 1) && (b == 0))
        z = 0;
    else if ((a == 0) && (b == 1))
        z = 0;
    else if ((a == 0) && (b == 0))
        z = 1;
    else
        z = 0;
    ifendmodule
