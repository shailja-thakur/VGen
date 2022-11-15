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
assign out = present_state == 1'b1 & ~in | present_state == 1'b0 & in;
always @(posedge clk or posedge reset)
	if (reset)
	begin
	next_state = 0;
	//Reset next state to state 0
	end
	
	else
	begin
	//Use the procedural assignment statement to set next state to state 0
	next_state = {present_state, in};
	//State 1 only happens if in (i.e. if state 1 is next state)
	case(next_state)
	2'b10: 
	begin
	if(in)
	begin
	next_state = 2'b01;
	//Why override state 1 to 1'b1 if it will still be 0???
	present_state = 1'b1;
	//Initialend
end
end
endmodule
