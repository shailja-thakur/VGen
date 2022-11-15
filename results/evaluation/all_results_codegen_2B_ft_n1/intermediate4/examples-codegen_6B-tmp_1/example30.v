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
always @(posedge clk) 
	//get's current state and next state
	case(present_state)
	0: begin 
	next_state=in;
	if(in)
	out = 0;
	else
	out=1;
	end
	1:begin 
	next_state=in;
	if(in)
	out = 1;
	else
	out=0;
	end

	//default state
	default: begin 
	next_state=1'b0;
	out=0;
	end
	endcase
//has the output changed
always @(posedge clk) 
	//get's output
//sets output according to current_state

assign out=(present_state==next_state)?1:0;

//present state
always @(posedge clkendmodule
