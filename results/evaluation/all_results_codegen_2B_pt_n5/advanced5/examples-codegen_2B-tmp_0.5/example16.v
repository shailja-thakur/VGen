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
//When a is high and b is high, the output z is high.
//When both a and b are low, the output z is low.
//When a is high and b is low, the output z is low.
//When a is low and b is low, the output z is low.

always @(posedge clk)
    if (reset == 1)
        cur_state = IDLE;
    else
    {
        if(a == 1)
        {
            if (b == 1)
                cur_state = S3;
            else
                cur_state = S1;
        }
        else
        {
            if (b == 1)
                cur_state = S2;
            else
                cur_state = S1;
        }
    }

always @(posedge clk)
    if (cur_stateendmodule
