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
state[0](clk, reset, in, out);
initial state 0;
end_state one(clk, in, out);// end state
initial state one;
end_state zero(clk, in, out);// end state
end state;
timer actions(.1);
assign out = present_state?"one":"zero";
sequence goes(next_state)
{
    if (next_state==0) next_state=1;
    else next_state=0;
    if (present_state!="1") out="zero";
    else out="one";
    present_state="next_state";
    next_state="0";
}
end
action finished(next_state, reset)
{
    if (present_state!="reset")
    {
        finished := next_state != "";
    }
    elseendmodule
