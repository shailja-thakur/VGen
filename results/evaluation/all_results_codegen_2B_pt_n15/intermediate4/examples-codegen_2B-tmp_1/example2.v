// Design a Moore state machine with two states 0 and 1, one input in, and one output out. Reset state is 0.
module simple_fsm(clk, reset, in, out);
input clk;
input reset;
input in;
output out;
wire out;
reg present_state, next_state;
// In state 0, if in=1, stay in state 0. In state 0, if in=0, go to state 1
// In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
// out=1 in state 0 and out=0 in state 1
always @ (clk, reset)
begin : fake_reset()
    reduce(next_state);
    out = ((reg("state_0") == 1 && reg("state_1") == 0) || (reg("state_0") == 0 && reg("state_1") == 1))
       && (next_state <= 3);
    else if(in==1)
         if(present_state==1)
             out = 1;
         else
             out = 1;
    else end_state;
    next_state = present_state;
end fake;

endmodule
