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
/*
always @(posedge clk or posedge w or posedge x) 
	begin
	//if w is asserted, then nextstate = write else nextstate = read
	//if x is asserted, then nextstate = write else nextstate = rom
	if(w) 	next_state = 2'b11;
	else if(x) 	next_state = 2'b01;
	else	next_state = {pres,{nw,nw,rw}};
	end
	

assign out = (({pres, prob, nw,rw} == 5'b00100) ? 1'b1 : 
	({pres, prob, nw,rw} == 5'b10000) ? 1'b1 : 
	({pres, prob, nw,rw} == 5'b?100) ? 1'b1 : endmodule
