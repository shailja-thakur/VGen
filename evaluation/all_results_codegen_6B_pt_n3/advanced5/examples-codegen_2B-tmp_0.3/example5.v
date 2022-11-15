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
//The output z is a function of the current state.
//The next state is the current state plus one.
//The current state is the current state minus one.
//The next state is the current state plus one.
//The current state is the current state minus one.

always @(posedge clk)
begin
    if (reset == 1)
        cur_state = IDLE;
    else
        cur_state = next_state;
    next_state = cur_state + 1;
    z = (a == 1) && (b == 1);
    if (cur_state == S1)
        next_state = S2;
    if (cur_state == S2)
        next_state = S3;
    if (cur_state == S3)
        next_state = S1;
end
);
endmodule
