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
// D is an e-mux, and D=1, means out is the output of the mux, which is in state 1
// State transitions synchronized to positive edge of clock, if reset=1
parameter s0=0, s1=1;
always @(posedge clk or posedge reset)
	if(reset)
	present_state <= s0;
	else 
	present_state <= next_state;
// State transition logic, next_state=MUX(D,present_state,in);
always @(present_state or in)
	case(present_state)
	s0: if(in) next_state=s1;
	s1: if(in) next_state=s1;
	else next_state=s0;
	endcase
assign out = (present_state==s1);
endmodule
