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
assign present_state = in;
always @(posedge clk)
begin
    if (reset == '1')
    begin
        out = out && present_state ^ reset;
        next_state >>= 1;
    end
end

always @(posedge clk)
begin
    if (reset == '0')
    begin
        out = out && present_state ^ reset;
        next_state >>= 1;
    end
end

assign next_state = 0 when next_state=0 else (in ^ reset) != 0;
assign out = out ^ wait(next_state);

always @(posedge clk)
begin
    next_state >>= 1;
    if (reset == '1')
    begin
        present_state >= in
    end
end
endmodule
