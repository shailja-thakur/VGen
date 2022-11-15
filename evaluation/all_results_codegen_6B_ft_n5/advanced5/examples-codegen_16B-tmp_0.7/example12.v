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
// z is assigned zero otherwise
// The state is IDLE when both a and b are low
always @ (cur_state or a or b)
begin
case (cur_state)
IDLE : begin
z = 0;
if (~a & ~b)
next_state = IDLE;
else if (a & ~b)
next_state = SA;
else if (~a & b)
next_state = SB;
else
next_state = SAB;
end
SA : begin
z = 0;
if (~a & b)
next_state = SAB;
else if (a & ~b)
next_state = IDLE;
else
next_state = SA;
end
SB : begin
z = 0;
if (~a & b)
next_state = SAB;
else if (a & ~b)
next_state =end
end
endmodule
