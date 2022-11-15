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
    next_state = 0;
    present_state = 0;
    out = 0;
    clk = 0;
    reset = 1;
end

initial begin
    next_state = 0;
    present_state = 0;
    out = 0;
    clk = 0;
    reset = 0;
end

always @(posedge clk) begin
    if (reset) begin
        next_state = 0;
        present_state = 0;
        out = 0;
        clk = 0;
        reset = 0;
    end
    if (reset) begin
        next_state = 0;
        present_state = 0;
        out = 0;
        clk = 0;
        reset = 0;
    end
    if (clk == 1) begin
        if (in == 1) beginend
end
end
endmodule
