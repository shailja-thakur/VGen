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
always @(posedge clk) begin
    if (clk == 0)
        next_state = 1;
    else
        next_state = 0;
    if (reset == 0)
        present_state = next_state;
    else
        present_state = (present_state == 0) ? 1 : 0;
end;

always @(negedge clk) begin
    if (reset == 1)
        out = 1;
    else
        out = (present_state == 0) ? 1 : 0;
end;
""")
fsm = Fsm("simple_fsm", "simple_fsm.v")
fsm.clk = "clk"
fsm.reset = "reset"
fsm.in = "in"
fsm.out = "out"
fsm.states = [0, 1]
endmodule
