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
// responsibility of next state
parameter 
S0=0, S1=1;
//state reg declarations
/*
reg [1:0] present_state,next_state;
//present state logic
always @(posedge clk or posedge reset)
	if(reset)
	 	//if(1)
	 	present_state<= S0;
	else
	 	present_state<= next_state;
	//next state logic
	always @(present_state or in)
	 	case(present_state)
	 	2'b00:
	 	 	if(in)
	 	 	 	next_state = S0;
	 	 	else
	 	 	 	next_state = S1;
	 	 	2'b01:
	 endmodule
