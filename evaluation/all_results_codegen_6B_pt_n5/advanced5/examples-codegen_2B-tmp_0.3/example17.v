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
//This is a state machine with the following states:
// Idle:
// The output z is high when both a and b are low.
// S1:
// The output z is high when a is high and b is low.
// S2:
// The output z is high when b is high and a is low.
// S3:
// The output z is high when a is low and b is high.

always @(*)
begin
    if (clk == 1)
        cur_state = IDLE;
    else
        cur_state = S1;
    next_state = S1;
    if (a == 1)
        next_state = S2;
    if (b == 1)
        next_state = S3;
    if (a == 0)
        next_state = S1;
    if (b == 0)
end
endmodule
