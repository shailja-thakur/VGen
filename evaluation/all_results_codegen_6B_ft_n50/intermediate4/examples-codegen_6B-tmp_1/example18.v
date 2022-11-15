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
assign out = present_state & in; // Why state 0 and state 1 are out=0 and out=1?
always @(posedge clk, posedge reset)
begin
	if(reset) 
	 begin
	nextState<=`s0;
	 LO<=`b0000_0000;
	 HI<=`b0000_0000;
	end 
	else 
	 begin
	 nextState<=`s0;
	 HI<=LO;
	 LO<=HI;
	end
end 
always @(present_state, in, nextState)
begin
	case(nextState)
`s0: begin //Push button case 
	if(in==1)
	begin
	nextState<=`s0;
	LO<=`b0000_0000;
	 HI<=`b0000_0000;end
end
endmodule
