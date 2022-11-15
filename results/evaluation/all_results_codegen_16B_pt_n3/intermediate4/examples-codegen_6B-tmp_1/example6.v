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
// Give output 1 for state 0 and 0 for state 1
assign c=1;
assign d=1;
// Register output of a DFF
// Attempt 0: dots = out=1
//time t0 = 300;
//time t1 = 300;
// Do the thing that the output is 1
// if signal is too close to 0
reg e = 1;

//if distance is too close to 0, ignore it and keep running

always @ (posedge clk)
 if (c < e) e <= c;

/*
else
e <= c;

*/
reg first = 0; //first time is on 0, & we have seen 1Hz
// Run forever if we're in state 0
always @ (posedge clk)
 if(first)
flg = 0;
 else begin 
first = 1;
if (reset)
	end
endmodule
