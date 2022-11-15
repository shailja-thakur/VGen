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
// Default is to be inferred.
initial
begin
	present_state = 0;
	next_state = 0;
end
// We have to have an output because of combinational logic
// That output will be assigned to the 'out' output of the FSM (wire out)
// assign out = (present_state == 0) ? 0 : 1;
always @(present_state)
begin
	case (present_state)
	// 0 asserted - switch to 1
	0:begin
	next_state = in ? 0 : 1;
	end
	// 1 asserted - switch to 0
	1:begin
	next_state = in ? 1 : 0;
	end
	// default - stay in present state
	default:begin
	end
	endcase
end
always @(posedge clk)
begin
	if (reset)
	// resetendmodule
