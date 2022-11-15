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
initial state:
    present_state = 0;
    next_state = 1;

    // use perl subroutine
    next_state::in = in;
    next_state::out = ~reset & ~(in | clk);
end state:
    next_state = present_state;
    if(reset > 0)
    {
            out = 1;
    }
end module simple_fsm;

*/
endmodule
