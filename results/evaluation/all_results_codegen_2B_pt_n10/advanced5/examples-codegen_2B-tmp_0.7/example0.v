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
// z is assigned zero when cur_state is other states
always @ (clk, reset, a, b)
begin
if (a == z)
z = 1;
else if (b == z)
z = 1;
else if (a == 1)
z = 1;
else if (b == 1)
z = 1;
else if (cur_state == IDLE)
cur_state = SAB;
else if ((next_state == IDLE) && (cur_state == SAB))
next_state = SA;
else if ((next_state == IDLE) && (cur_state == SA))
next_state = SB;
else if ((next_state == IDLE) && (cur_state == SAB))
next_state = SAB;
else if ((next_state == IDLE) && (cur_state == SB))
next_end
endmodule
