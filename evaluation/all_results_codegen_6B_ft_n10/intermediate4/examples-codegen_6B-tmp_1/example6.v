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
assign out=(present_state==1'b1)^(~in);


//creates two versions of the state matrix
// one that takes no input and one that takes an input
//Notice how the state changes are described on the same lines.
 
assign ns[0]={ns[0][3], ns[0][4],ns[0][2], ns[0][1],ns[0][0]}; 
assign ns[1]={ns[1][3], ns[1][4],ns[1][2], ns[1][1],ns[1][0]}; 

//above code takes no input and sets the output, ns[2], to be equal to ns[0]

always@(posedge clk or posedge reset)
	if(reset)
	present_state<=ns[0];
	else 
	endmodule
