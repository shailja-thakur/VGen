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
always @(*)
	present_state <= next_state;

// Compute next state
always @(posedge clk)
	if(reset | (present_state == 2'b00 && in==1'b1))
	next_state <= 2'b00;
	else if(present_state == 2'b01 && in==1'b1)
	next_state <= 2'b01;
	else if(present_state == 2'b01 && in==1'b0)
	next_state <= 2'b10;
	else if(present_state == 2'b10 && in==1'b0)
	next_state <= 2'b10;
	else if(present_state == 2'b10 && in==1'b1)
	next_state <= 2'b01;
	
// Compute output
endmodule
