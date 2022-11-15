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
state st2 (reg &in, reg out) is
    posedge clk, reset--;
    posedge reset - posedge clk: out = (in==1) ? 1 : 0; _next_state = 1; _tx_is_ready = 1 too state 1
    posedge clk--;
    posedge reset -- posedge clk: _tx_is_ready = 0; _next_state = 0; _out = (in == 0); _in = 1
    posedge clk: _tx_is_ready = true; _next_state = 0 delSt2 st 2 (reg in, reg out)
endstate st2
endmodule
