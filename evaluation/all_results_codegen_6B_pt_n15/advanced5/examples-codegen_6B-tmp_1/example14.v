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
always @(posedge clk or negedge reset)
begin
  case cur_state is
    IDLE:
      if( a == 1 and b == 1 )
      begin
        next_state = SAB; // Transition to SAB
      end
      else next_state = IDLE;  // transition to IDLE (0)
    case SAB:
      if( a == 1 )
      begin
        z = 1; // transition to 0
      end
      if( b == 1 )
      begin
        z = 0; // transition to 1
      end
      end
      else next_state = IDLE; // stay at IDLE
    case SA:
      if( b == 1 )
      begin
        z = 1; // transition to 0
      end
      next_state = SB; // IDLE
    case SB:
      if( aendmodule
