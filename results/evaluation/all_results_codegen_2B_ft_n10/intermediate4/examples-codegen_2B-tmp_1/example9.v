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
always @(posedge clk or reset or in) begin
	if (reset == 1) begin
	// Reset the present state.
	present_state <= 1'b0;
	end else begin
	// Update the present state when a time-varying input value arrives.
	present_state <= next_state;
	end
end
// Moore FSM next_state by in
always @(present_state or in) begin
	case (present_state)
	case (1'b1)
	//00
	begin
	// in supposed to reset state 0
	next_state <= in;
	end
	//01
	begin
	// in supposed to go back to state 0
	next_state <= in;
	end
	endcase
end
endmodule
