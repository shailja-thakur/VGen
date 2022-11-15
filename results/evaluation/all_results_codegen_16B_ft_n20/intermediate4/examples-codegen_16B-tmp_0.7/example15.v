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
assign out = ((present_state == 0)&(in == 1'b1))?1'b0:
	((present_state == 0)&(in == 1'b0))?1'b1:
	((present_state == 1)&(in == 1'b1))?1'b0:1'b1;
// Use two always blocks as shown below. Note that the output is not stable until the next clock cycle.
always @(posedge clk)
begin
	if (reset == 1'b1)
	begin
	next_state <= 0;
	present_state <= 0;
	end
	else
	begin 
	next_state <= present_state;
	present_state <= next_state;
	end
end
endmodule
