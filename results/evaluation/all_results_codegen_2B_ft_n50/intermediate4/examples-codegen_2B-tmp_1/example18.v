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
if(reset)
	present_state <= 0;
else
	present_state <= next_state;
// Moore Moore FSM- {in,present_state} -> {0,1} -> {next_state} ->{present_state,out}
always @(present_state or next_state or in) 
begin 
	case({present_state, in}) 
	 //{present_state, in} -> {next_state} -> {present_state,out}
	 {1'b0,1'b1}: next_state = 1'b0;	//state 1
	{1'b1,1'b1}: next_state = 1'b1; 	//state 0
	{1'b1, 1'b0}: next_state = 1'b0;	end
endmodule
