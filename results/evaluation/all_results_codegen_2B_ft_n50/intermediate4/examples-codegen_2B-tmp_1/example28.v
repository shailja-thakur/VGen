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
parameter state0 = 0;
parameter state1 = 1;
always @(negedge clk or posedge reset)
begin
	if (reset)
	begin 
	present_state <= state0;
	end
	else 
	present_state <= next_state;
end
always @(present_state or in)
begin
next_state = (~in) ? state0 : (~reset) ? state1 : (~present_state) ? state1 : state0;
end
always @(present_state or in)
	case (present_state)
state0: if(in) out = 0; else out = 0;
state1: if(in) out = 0; else out = 1;
default: out = 0;
	endcase
endmodule
