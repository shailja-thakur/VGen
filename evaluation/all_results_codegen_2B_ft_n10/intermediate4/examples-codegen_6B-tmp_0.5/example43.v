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
//
always @(posedge clk)
	if (reset) // if this statement is executed, then the present_state is reset
	begin
	 	present_state <= `A;
	end
	else
	begin
	 	present_state <= next_state;
	end
always @(posedge clk)
	if (reset) // if this statement is executed, then the next state is reset
	begin
	 	next_state <= `A;
	end
	else
	begin
	 	next_state <= `A;
	end
always @(posedge clk)
	if (reset) // if this statement is executed, then the output is reset
	begin
	 	out <= 0;
	end
	else
	begin
	 	case(present_state) // case(present_state) executes the statementend
endmodule