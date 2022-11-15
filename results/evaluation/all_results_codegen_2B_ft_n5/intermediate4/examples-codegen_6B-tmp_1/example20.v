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

// along with a clock

assign out= present_state AND in; // in the current state, a&b

always @(posedge clk)
begin 
if(reset) // if in state 0, then transition to state 1 if reset is TRUE
present_state <= next_state;
else
present_state <= present_state;
end 

// Next state block

always @(present_state, in)
begin
next_state = 0; // Default state
case( present_state )
0: if(~in)
	next_state = 1;
	else
	next_state = 0;
	
1: if(~in)
	next_state = 0;
	else
	next_state = 1;
endcase
end


assign out = present_state AND in; // In the output (outs) blockendmodule
