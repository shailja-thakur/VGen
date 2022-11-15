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
assign next_state = present_state & ~in;
assign out = present_state;
always @(*) begin 
	if (reset) begin // Synchronous code first determines the next state, then sets the output
	 	//present state = next state;
	 	case(next_state)
	 	//0 and 1; can be written as 01 and 10
	 	2'b01: present_state = 2'b10;
	 	2'b10: present_state = 2'b01;
	 	endcase
	 	//setting the values of out and other variables
	 	case(next_state)
	 	//0 and 1; can be written as 01 and 10
	 	2'b01:
	 	assign out = 1'b0;
	 	2'b10:endmodule
