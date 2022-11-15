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
    if (cur_state == IDLE and a and b) next_state = SAB;
    if (cur_state == IDLE and a) next_state = SA;
    if (cur_state == IDLE and b) next_state = SB;
    if (next_state == SA and b) next_state = SAB;
    if (next_state == SB and a) next_state = SAB;
    if (next_state == SAB) z = 1;
    cur_state = next_state;
  end

endmodule
