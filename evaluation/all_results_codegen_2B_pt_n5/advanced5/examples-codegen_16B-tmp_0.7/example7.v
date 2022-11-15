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
submodule state_transitions
{
  default state = IDLE;
  state next[3] = { IDLE, IDLE, IDLE };
  initial begin
    next_state = IDLE;
    // If the incoming edge is high, the FSM will change to the next state.
    if (a) next_state = S1;
    if (b) next_state = S2;
    // If the incoming edge is low, the FSM will change to the next state.
    if (not a) next_state = S3;
    if (not b) next_state = S1;
  end
}
endmodule
