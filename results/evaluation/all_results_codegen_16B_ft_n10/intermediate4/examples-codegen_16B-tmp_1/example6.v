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
parameter state0 = 1'b0, state1 = 1'b1;

// The code goes here
always @ (in or present_state or next_state)
begin
if(present_state == state0 & in == 1)
next_state = state0;
else if(present_state == state0 & in == 0)
next_state = state1;
else if(present_state == state1 & in == 1)
next_state = state1;
else if(present_state == state1 & in == 0)
next_state = state0;
else
next_state = present_state;

end

// Output logic of FSM goes here
// assigns out = (present_state == state1) ? 1:0; 
subor asdf(out, present_state == state1, in);
always @ (present_state orendmodule
