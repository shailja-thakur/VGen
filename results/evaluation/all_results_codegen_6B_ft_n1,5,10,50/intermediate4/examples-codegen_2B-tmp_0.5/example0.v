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
    reset = 1;
    next_state = 0;
    present_state = 0;
    in = 0;
end

initial begin
    out = 1;
    reset = 0;
    next_state = 1;
    present_state = 1;
    in = 1;
end

wire [3:0] state_mask;
wire [3:0] state_shift;
wire [3:0] state_mask_temp;

initial begin
    state_mask = 0b11;
    state_shift = 3;
    state_mask_temp = 0b11;
    state_mask_temp = state_mask_temp << state_shift;
    state_mask_temp = state_mask_temp | state_mask;
end

initial begin
    if (reset == 1) begin
end
end
endmodule
