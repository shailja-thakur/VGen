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
begin
    // Assign the current state to the variable next_state
    next_state = cur_state;
    // If the next state is IDLE, then assign the output z to low
    if (next_state == IDLE)
    z <= z;
    // If the next state is SA, then assign the output z to high
    if (next_state == SA)
    z <= 1;
    // If the next state is SB, then assign the output z to high
    if (next_state == SB)
    z <= 1;
    // If the next state is SAB, then assign the output z to high
    if (next_state == SAB)
    z <= 1;
end
// The function entry point
// This is a clock driver
// The input clk is the clock that signals whether a transition isendmodule
