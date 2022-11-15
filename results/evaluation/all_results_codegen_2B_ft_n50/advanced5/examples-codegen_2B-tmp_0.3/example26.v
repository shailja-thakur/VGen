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
// if input a is high and input b is low, state changes to SA.
always @(posedge clk, posedge reset)
if (reset)
cur_state <= IDLE;
else
cur_state <= next_state;
// FSM next state logic:
always @(*)
case (cur_state)
IDLE:
if (a)
next_state <= SA;
else if (b)
next_state <= SB;
else
next_state <= IDLE;
SA:
if (b)
next_state <= SAB;
else
next_state <= IDLE;
SB:
if (a)
next_state <= SA;
else
next_state <= IDLE;
SAB:
next_state <= SAB;
default:
next_stateendmodule
