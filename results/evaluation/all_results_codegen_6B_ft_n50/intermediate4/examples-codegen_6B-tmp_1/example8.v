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
always@(posedge clk, posedge reset)
	if (reset) 
	begin
	present_state <= 0;
	next_state <= 1;
	end
	else 
	begin
	// You can also instantiate a combinational always block (created by)
	// to do the same thing.
	// Combinational always block for state 0
	if (in && !present_state)
	begin
	next_state <= 0;
	// Combinational always block for state 1
	end 
	else if (!in && present_state)
	begin
	next_state <= 1;
	end 
// This always block is a sequential always block which drives the 
// output on out.
always@(posedge clk)
	if (present_state)
	begin
	out <= next_state;
	end
end
endmodule
