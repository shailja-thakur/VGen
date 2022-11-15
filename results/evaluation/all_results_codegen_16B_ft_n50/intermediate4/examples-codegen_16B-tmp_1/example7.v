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
// clk is an input for state flipflops

// output wires
fork	
	always @(posedge clk)	// hold present state for one clock cycle
	begin
//update present state
// reset to initial state 0
present_state <= (reset) ? 0 : next_state ;	//merge back the fork here
end

always @(*)
begin
// table for next state
case(present_state)
0:	begin
	if(in==1)
// next state 1 in current clock cycle
	next_state = 1;	
	else
// change present_state by adding input to next state
	next_state = present_state + 1;
	end
1:	begin
	if(in==0)
// next state 0 in current clock cycle
	next_state = 0;
	else
// change present state by subtractend
end
endmodule
