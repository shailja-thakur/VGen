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

// If reset_state=1, it means reset, so present state will change to reset_state
// If there is no reset_state, then it will always go to state 0
parameter almost_zero=1e-6;
always @ (posedge clk)
begin
	// Following is an assignment with a state machine, with transiton conditions. The state machine is embedded in a genvar for iteration in always block"
	if(reset)
	begin
	present_state<=reset_state;
	end
	else 
	begin
	present_state<=next_state;
	end
end

always @ (*)
begin // This block contains the state transition logic
	case(present_state)
	// If the present state is zero, the next state must be 1
	almost_zero:
	begin
	if (in)
	begin
end
end
endmodule
