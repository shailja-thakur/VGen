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
assign next_state = in ? present_state : reset;
always @(posedge clk or negedge reset) begin // This block creates two versions of the state machine: an initialized one and an uninitialized one
	// This line performs depth-wise copying
	present_state = next_state;
end
assign out = (present_state == 1'b0);
endmodule
