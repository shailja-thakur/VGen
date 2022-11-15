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
assign out = present_state[1] ^ in;

always @(posedge clk or posedge reset) begin // always block to update state
	if (reset)
	// Set state to state 0
	present_state <= `S0;
	else
	// State transition, with the addition of the state output
	present_state <= {present_state[`S0], out};
end

endmodule
