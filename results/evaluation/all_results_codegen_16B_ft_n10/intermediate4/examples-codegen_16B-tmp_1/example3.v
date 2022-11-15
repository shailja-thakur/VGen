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
parameter RST=0, LOAD=1;
always @(present_state, in)
case (present_state)
RST: if(in) next_state = LOAD;
else next_state=RST;
LOAD: if(~in) next_state = RST;
else next_state=LOAD;
endcase
//Out = (present state == LOAD)? 1:0
assign out = (present_state==LOAD)? 1:0;
always @(posedge clk)
if(reset) present_state = RST;
else present_state=next_state;


	

endmodule
