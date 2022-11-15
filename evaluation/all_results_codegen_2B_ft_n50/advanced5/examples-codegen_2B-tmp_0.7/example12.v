// This is an FSM 
module abro(
input clk,
input reset,
input a,
input b,
output z 
);
parameter IDLE = 0, SA = 1, SB = 2, SAB = 3;
reg [1:0] cur_state,next_state;
// Update state or reset on every clock edge.
// Output z is asserted 1 when the current state is SAB.
// Nest state generation logic:
// if input a and b both are high, state changes to SAB. 
// if input a and b are both low, state changes to IDLE. 
// if only input a is high, state changes to SA. 
// if only input a is low, state changes to SB. 
always @(posedge clk)
if(reset)
	cur_state <= IDLE;
else
	cur_state <= next_state;
always @(*)
	if(cur_state == SAB)
	z <= 1;
	else
	z <= 0;
always @(*)
	case(cur_state)
	IDLE:
	if(a)
	next_state <= SA;
	else if(b)
	next_state <= SB;
	else
	next_state <= IDLE;
	SA:
	if(a)
	next_state <= SB;
	else
	next_state <= Sendmodule
