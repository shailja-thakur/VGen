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
always @(posedge clk) 
	if(reset)	 
present_state <= `A;
else 
	present_state <= next_state;
wire out;
always @( posedge clk ) 
	if( present_state == `A && ( ~in ) ) 
	next_state <= `A; 
	else if( ( ~in ) && (instruction[7] == 1'b1 ) )
	
	next_state <= `C;
	else if( ( ~in) && ( instruction[7] == 1'b0 ) )
	
	next_state <= `B;
	else if ( in && ( ( instruction[7] == 1'b0 ) || ( ( instruction[6:5] == 2'b0 ) && ( !instruction[4] ) ) )
	next_state <= `A;endmodule
