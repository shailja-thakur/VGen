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
// Clk is a pulse rising edge and reset is a pulse falling edge.
reg [2:0] present_state;
reg [1:0] next_state;
reg out;

always @*
begin
    if (clk==1) begin
        next_state = in;
        out = out; // output is what the input was before
    end else
        next_state = present_state;
end

always @*
begin
    if (reset==1) begin
        next_state = 0;
        out = out; // output is what the input was before
    end else
        next_state = present_state;
end


initial begin
    present_state = 0;
    next_state = 0;
end

initial begin
    begin
        if (reset==1) begin
            next_state = 0;
            outend
end
end
endmodule
