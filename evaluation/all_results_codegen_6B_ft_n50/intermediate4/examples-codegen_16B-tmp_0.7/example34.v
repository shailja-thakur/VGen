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
assign out = (present_state == 1 && in == 1) ? 1 : (present_state == 1 && in == 0) ? 0 : present_state;
// Next state logic
always @(posedge clk) begin
 if(reset) begin
// if reset, go to state 0
 next_state = 0;
 end
 else begin
// else, next state is same as present state
 next_state = present_state;
 end
end
// State flip-flops with asynchronous reset
always @(posedge clk) begin
 if(reset) begin
 // if reset, set state to 0
 present_state = 0;
 end
 else begin
 // if not reset, set state to next state
 present_state = next_state;
 end
end
endmodule
