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
assign out=(present_state==next_state)&&(in);
// The transition of the Moore State machine from state to state is if state changing on a clk edge, where a clock edges in=1 and out=0.
always @(posedge clk or posedge reset)
	begin
	// reset state machine
	if (reset)
	present_state <= next_state;
	else
	present_state <= {present_state[0],in};
	end
//the next state is equal to the present state with the exception of next_state=0, which means reset and out=1.
always @(present_state)
	begin
	next_state = present_state;
	//next_state[0]=0;
	if (present_state[0]==1'b0 && in==1'b1)
	next_state[end
endmodule
