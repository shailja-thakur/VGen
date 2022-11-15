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
    out = 0;
    next_state = reset;
    present_state = 0;
    if (reset == 1) begin
        out = 1;
        next_state = 0;
    end else begin
        if (clk == 1) begin
            out = in;
            next_state = 1;
        end
    end
end
// State machine for 0 to 1 transition
initial begin
    if (reset == 1) begin
        out = in;
        next_state = 1;
    end
    if (in == 1) begin
        out = 0;
        next_state = 0;
    end
    if (out == 1) begin
        next_state = 1;
    end
end
// State machine for 1 to 0 transition
initial begin
    if (reset == 1) begin
        out = in;
        nextend
end
endmodule
