// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB
always @(posedge clk)
{
  next_state = cur_state;
  if (cur_state == IDLE)
  {
    if ( a > 0 && b > 0 ){ next_state = SAB;}
    if ( a > 0 && b < 0 ){ next_state = SA;}
    if ( a < 0 && b > 0 ){ next_state = SB;}
  }
  else
  {
    if ( z == 1 ){ next_state = IDLE;}
  }
  switch(next_state)
  {
    case SA:
    // Expect 1 on both A and B when all 4s are low
    z = z && a && b;
    if (z){ next_state = IDLE;}
    break;
    case SB:
    // Expect 1 on both A and B when all 4s are lowendmodule
