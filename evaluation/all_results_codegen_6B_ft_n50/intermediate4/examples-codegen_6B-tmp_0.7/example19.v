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
// Wires for the next state
// Complement of next state
assign next_state = ({in, present_state} == 2'b01) ? 2'b01 : ({in, present_state} == 2'b10) ? 2'b10 : 2'b00;
// This is a sequential always block
always @(posedge clk)
// This is the same as above, but with a structural always block
// A procedural always block is needed here because a procedural always block in a procedural always block is not synthesized.
begin : my_always
	present_state <= next_state;
end
// This is a combinational always block
assign out = (present_state == 2'b01) ? (in) : (not_in);
endmodule
