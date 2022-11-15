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
dut f1(clk, next_state, reset, present_state, in, out);
//reset_design r1(reset,clk, next_state, present_state);
initial begin
//present_state initalization
present_state = 1'b0;
//****IMPORTANT****Next State assignment rule needs to be changed
next_state = in;
end
endmodule
