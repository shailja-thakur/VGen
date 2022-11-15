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
posedge clk;
// clk = 1 => prev_state = cur_state
posedge next_clk;
port output z;
state State(
int[3] d[0:3],clk);

void clock();

STATE State::idle(
void)
{
  if (a>=b)
    cur_state = SAB;
  else
    cur_state = IDLE;
}

STATE State::SA(
void)
{
  cur_state = SAB;
  if (not reset)
    z = not clk;
}

STATE State::SB(
void)
{
  // The state changes to IDLE when either a or b are high.
  if (a or b)
    cur_state = IDLE;
}

STATE State::SAB(
void)
{
endmodule
