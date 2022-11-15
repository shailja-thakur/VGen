// This is an FSM.
module abro(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
//The input signals a or b may never repeat their respective states, in the case where this FSM does not run.
//Note that minimum and maximum deltas are specified by the unit and not by the FSM
// Note also that the implementation often generates "unused and unspecified regions" as the actual behaviour may not be clear.
always @(posedge clk)
	cur_state <= next_state;
	next_state <= (((a == HIGH && (b == HIGH || cur_state == IDLE)) ? S1 : IDLE));
	next_state <= (((a == LOW  && (b == HIGH || cur_state == IDLE)) ? S3 : IDLE));
	next_state <= (((a == HIGH && (b == LOW  || cur_state == IDLE)) ? S2 : IDLE));
	next_state <= (((a == LOW  && (bendmodule
