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
initial begin
    // Clock goes high when clk is low
    if (clk == 1) begin
        out = (in == 1) ? 0 : 1;
        next_state = (present_state == 0) ? 1 : 0;
        present_state = next_state;
    end
    // Clock goes low at reset
    if (reset == 1) begin
        out = 1;
        next_state = 0;
        present_state = next_state;
    end
end
endmodule
