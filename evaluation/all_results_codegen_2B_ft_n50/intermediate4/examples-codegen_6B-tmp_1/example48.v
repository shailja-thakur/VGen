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
assign out=(present_state==`s1) &~(in) |(present_state==`s0) & (in);
always @(posedge clk)
	if(reset)
	begin
	present_state<=`s0;
	end 
	else if(in)
	begin
	present_state<=`s1;
	end 
	else if(out)
	begin
	present_state<=`s0;
	end 
	else if(present_state != `s1)
	begin
	present_state <= next_state;
	end
	assign out=(present_state==`s1) & (in) | (present_state==`s0) & (in) ;
///////////////////////////state table
//`define STATE_ADDRESS 	3'b000
//`endmodule
