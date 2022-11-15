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
parameter A = 2'b00, B = 2'b01, C = 2'b10;
// state registers
reg [1:0] present_state, next_state;
// Output of the core
assign core_out = present_state[1];
// From check of the inputs, goes to the next state
always @ (clk or reset or present_state or next_state or in)
begin
case (present_state)
B: if (in==1'b1) begin next_state=A; end
if (reset==1'b1) begin done = 1'b1; present_state = B; end
if (next_state == 1'b0 || next_state==1'b1) begin done = 1'b0; present_state = B; end
//If in=0, stay in same state if reset=0, moveend
endmodule
