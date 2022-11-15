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
// Go to state 0 if reset=1
always @ (posedge clk) begin
	if (reset)
	begin
	present_state <= `STATE0;
	end
	else
	begin
	present_state <= next_state;
	end
end
always @ (present_state or in) begin
case(present_state)
`STATE0: 
begin
next_state = in ? `STATE0 : `STATE1;
out = 0;
end
`STATE1: 
begin
next_state = in ? `STATE1 : `STATE0;
out = in ? 0 : 1;
end
endcase
end
endmodule
