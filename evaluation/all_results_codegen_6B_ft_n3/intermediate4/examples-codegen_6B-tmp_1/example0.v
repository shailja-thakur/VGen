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
// Simulate this with a JK-FF

//Propagate an clk signal through our state set, and a reset signal through J.K

JK_FF ff00(clk, reset, in, out, next_state[0]);
JK_FF ff01(clk, reset, ~in, out, next_state[1]);

always@(posedge clk or posedge reset) 
	begin
	if(reset) 
	present_state <= `A;
	else 
	present_state <= next_state[0];
	end

//To get a 2-bit output, the next block equivalent is as follows
next_state = {j,k}; //Outputs a signal if the state is a k,j state
endmodule
