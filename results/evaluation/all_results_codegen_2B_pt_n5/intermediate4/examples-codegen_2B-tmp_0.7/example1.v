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
// In state 0, if clk=1, reset state
// In state 0, if clk=0, set next_state = 0
assign next_state[(reset==1)?'1':'0'] = reset;
assign next_state[(in==1)?'1':'0'] = in;
assign next_state_fsm(next_state, present_state, clk, out);

always @(posedge clk)
    if (reset == 0)
    {
        present_state = 0;
    }
    else
    {
        if (in == 1)
        {
            if (present_state == 0)
            {
                present_state = 1;
            }
        }
        else
        {
            if (present_state == 1)
            {
                present_state = 0;
endmodule
