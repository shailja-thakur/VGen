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
assign z 1 when (cur_state = SAB and a and b) or (cur_state = SA and a) or (cur_state = SB and b) or (cur_state = IDLE and 0)
begin
  next_state = zeroBits(cur_state, a, b);
    // notice: Classic FSM accepts all possible modelling so z is assigned on false transition
  if ((cur_state = z) == SAB)
    cur_state = IDLE;
    //SEND(idle|bar);
  if ((cur_state = next_state) == SAB)
    cur_state = SA | SB;
    //next_state = zeroBits(sa, bar);
    //if next_state is IDLE, then the system is in an IDLE state
  if ((cur_state = next_state) == IDLE)
    end
endmodule
