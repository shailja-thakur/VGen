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
begin
case(present_state)
	0: begin
	present_state <=next_state;
	if(in) 
	begin
	out <=0;
	end
	else 
	begin
	out <=0;
	end
	end
	1:begin
	present_state <=next_state;
	if(in) 
	begin
	out <=1;
	end
	else 
	begin
	out <=0;
	end
	end
endcase
end
// Set up transition matrix
always @(*) 
begin
case(present_state)
	0:begin
	next_state <=in? 0:1;
	end
	1:begin
	if(in) 
	begin
	next_state <=0;
	end
	else 
	begin
end
end
endmodule
