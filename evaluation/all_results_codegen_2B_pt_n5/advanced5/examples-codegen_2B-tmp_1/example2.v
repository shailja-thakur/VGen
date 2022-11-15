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
always @(clk, reset)
begin
    if (reset == 0) // Reset events take the active state.
        cur_state = IDLE;

	reg new_z = 0;
    if ((a == 1) && (b == 1))
        if (cur_state == IDLE)  // As soon as SAB is raised, the output is high
            new_z = 0;
        else
            cur_state = SAB;

    if ((a == 1) && (b == 0))
        if (cur_state == IDLE)  // As soon as SAB is raised, the output is high
            new_z = 0;
        else
            cur_state = IDLE;

    if ((a == 0) && (b == 1))
        if (cur_state == IDLE)  // As soon as SAB is raised, the output isend
endmodule
