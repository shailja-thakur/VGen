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
always @(posedge clk, posedge reset)
begin
	if (reset == 1) begin
	// reset is asserted.
	present_state <= 0;
	next_state <= 0;
	end
	else begin
	if (in) begin
	next_state = present_state;
	end
	// When the next state sequence arrives, we can also determine the next output.
	case (present_state)
	4'b0000 : begin // if this rule doesn't apply why serialise this loop as it cannot be synthesised otherwise
	if(in)
	next_state = 4'b0000;
	else
	next_state = 4'b0001;
	end
	4'b0001 : begin // because serialisation only writes if singleton assigned here does not violate its independence rules (violating the above rule)
	/* Yes, like in aend
endmodule
