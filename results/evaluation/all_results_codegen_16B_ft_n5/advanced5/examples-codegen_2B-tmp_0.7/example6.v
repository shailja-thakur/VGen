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
//This is needed because the transitions require BOTH a AND b to be high or LOW.

always @(posedge clk)
    if (cur_state == IDLE) {
        cur_state = S1;
    }
    if ( a == 1 and b == 1 and not (S2 in cur_state) and cur_state != S2 and not (S3 in cur_state) and cur_state != S3) {
        cur_state = S2;
    }
    if ( a == 1 and b == 0 and not (S2 in cur_state) and cur_state != S2 and not (S3 in cur_state) and cur_state != S3) {
        cur_state = S3;
    }
    if (a == 0 and b == 1 and not (S2 in cur_state) and cur_state != S2 andendmodule
