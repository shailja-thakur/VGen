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
reg [1:0] States [] = {
  {sb_state, SB},
  {sb_state, SB},
  {sb_state, SAB},
  {sa_state, SAB},
  {sa_state, SA},
  {idle_state, IDLE}
};
constexpr int states = states_end;
reg [states:0] inputs pos = pos::pos( clk, reset, a, b );
reg [states:0] outputs z = z;

always @ (pos)
void main()
{
  switch (cur_state)
  {
  case idle_state:
    if ((idle == 1 && !a && !b) || (idle == 0 && a && b))
    {
      next_state = sb_state;
    }
    else
    {
      next_stateendmodule
