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
always @(posedge clk or in)
{
    next_state = 0;
    next_state <= 1;
    present_state <= next_state;
}

//component fsm_out_toggle
class fsm_out_toggle
{
is 0;
is fsm_out_toggle(state);
state state;
{
    if (state)
    {
        fsm_out_ttoggle > 1;
    }
    if (!state)
    {
        fsm_out_ttoggle > 0;
    }
};
property fsm_out_ttoggle;
//fsm_out_toggle .state(state);
update fsm_out_ttoggle[(state|)];
end;
};

//Entity
//state algorithm
//speed to state transfer done at majority of outputs
//speed to transition to nextendmodule
