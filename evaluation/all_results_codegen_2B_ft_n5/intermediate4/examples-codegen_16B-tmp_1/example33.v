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
parameter up=1'b0, down=1'b1;
always @(posedge clk)
begin
	if (reset)
	begin
	present_state <= up;
	end
	else
	present_state <= next_state;
end
// next state values
always @(present_state,in)
begin
case(present_state)
	up: if(in)
	next_state <= up;
	else
	next_state <= down;
	down: if(in)
	next_state <= down;
	else
	next_state <= up;
endcase
end
// out values	
assign out = (present_state == up)? 1:0;
endmodule
