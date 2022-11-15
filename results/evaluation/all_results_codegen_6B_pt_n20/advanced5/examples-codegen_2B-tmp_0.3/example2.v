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
//The output z is set to low when the input a is high and the input b is high.
//The output z is set to high when the input a is high and the input b is low.
//The output z is set to low when the input a is low and the input b is high.

always @(posedge clk)
    if (reset) next_state = IDLE;
    else if ((a == 1) && (b == 1)) next_state = S1;
    else if ((a == 1) && (b == 0)) next_state = S2;
    else if ((a == 0) && (b == 1)) next_state = S3;
    else next_state = IDLE;
    cur_state = next_state;
    z <= cur_state;
endmodule
