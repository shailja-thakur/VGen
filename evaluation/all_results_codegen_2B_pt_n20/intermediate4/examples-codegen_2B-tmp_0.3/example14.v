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
// reset=1, if reset=1, go to state 0
initial begin
    out = 1;
    next_state = 0;
    present_state = 0;
    reset = 1;
end

always @(posedge clk) begin
    if (reset == 1) begin
        next_state = 0;
    end else begin
        if (in == 1) begin
            next_state = 1;
        end else begin
            next_state = 0;
        end
    end
    out = next_state;
end

endmodule
