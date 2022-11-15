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
reg present_state, next_state;
parameter state0 = 1'b0, state1 = 1'b1;
// Outputs
always@(posedge clk) begin
// Combinational logic
if(reset == 1'b0)
present_state <= state0;
else
present_state = next_state;
end
// State transition
always@(present_state or in) begin
next_state <= present_state;
case(present_state)
store <= 1'b0;
load_and_prepare <= 1'b0;
repeat_load <= 1'b0;
state0 <= in & state0;
state1 <= in & store;
endcase
end
endmodule
