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
/*output present_state, next_state;
// Register World implementation
// connects output with input in the same module
// connects output with the present_state 
// connects input with output in the same module
// connects input with next_state
assign present_state = ~next_state;
assign next_state = (in==1'b1) ? 1'b1 : ( (in==1'b0) ? 1'b0 : 1'b1 );
assign out=(present_state == 1'b1)?(in):(~in); */
// D flip-flop implementation with synchronous reset
// connects output with input on clock
// connects output with reset
// Clock-and-Bound system for corner case timing
parameter bound = 10000000;
always @(posedge clk)
begin
if(reset)
	present_state <= #(bound)end
endmodule
