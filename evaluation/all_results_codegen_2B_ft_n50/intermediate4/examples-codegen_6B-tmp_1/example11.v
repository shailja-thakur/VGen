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
always@(posedge clk) begin
    if(reset) begin
        next_state <= 0;
    end else begin
        next_state <= in;
        if(next_state == 0 and in == 1) begin
            next_state <= 0;
        end else if(next_state == 1 and in == 1) begin
            next_state <= 1;
        end else if(next_state == 0 and in == 0) begin
            next_state <= 1;
        end else if(next_state == 1 and in == 0) begin
            next_state <= 0;
        end
    end
end
end

$display(simple_fsm, "simple_fsm");
$display(simple_fsm, "next_state");
$display(simple_fsm, "present_state");
$display(simple_fsm, "outendmodule
