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
always @(posedge clk or negedge mclk)
reset <= 1;
start //Delay signals for setup only (can delay anything b/c rea/res not gated)
{
    cur_state <= IDLE;
    init_state = IDLE;
    first_state = IDLE;
    next_state = IDLE;
}
always @(posedge clk)
next_state <= first_state;
if( first_state == IDLE ) begin: // prevention of unexpected attractor loop
  if( next_state == SAB and a == 1 and b == 1) begin: //fsm after delay
  {
    next_state <= SAB;
  }else if( next_state == SA and b == 1) begin: //fsm after delay
  {
    next_state <= SA;
  }else if( nextendmodule
