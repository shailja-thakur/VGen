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
always_ff @(posedge clk, phantms)+ begin //Construct the Moore state machine

	if(reset)  present_state=0;
	else if(present_state==0 and (in==1)) present_state=0; // Start the thing off
	else present_state=1;

	if(present_state==0) 
		next_state=0; // State 0
	else 
		next_state=1; // State 1

	out=next_state; //Go with the newly computed values
end
endmodule
