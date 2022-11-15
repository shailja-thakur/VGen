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

always @ (posedge clk or posedge reset) begin
	if (reset)	
	present_state <= `A;
	else
	present_state <= next_state;
end

always @ (posedge clk or posedge reset) begin
	if (reset)	
	next_state <= `A;
	else
	if (present_state == `A && in == `A)
	next_state <= `B;
	else	 
	if (present_state == `B && in == `B)
	next_state <= `A;
end

assign out = `A;
 
endmodule
