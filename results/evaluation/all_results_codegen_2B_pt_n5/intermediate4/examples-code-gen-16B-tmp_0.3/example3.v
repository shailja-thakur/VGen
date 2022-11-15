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
// Write the combinational logic for the next state
always @(in or present_state)
begin
case (present_state)
0: next_state = in;
1: next_state = ~in;
endcase
end
// Write the sequential logic to update the present state
always @(posedge clk or posedge reset)
begin
if (reset)
present_state <= 0;
else
present_state <= next_state;
end
// Write the combinational logic for the output
always @(present_state)
begin
case (present_state)
0: out = 1;
1: out = 0;
endcase
end
endmodule
