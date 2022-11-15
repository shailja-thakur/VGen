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
    if (a && b) cur_state.read = SAB;
    else if ( a ) cur_state.read = SA;
    else if ( b ) cur_state.read = SB;
    if (!reset)
      cur_state.write = (cur_state == IDLE || cur_state < 2) ? IDLE : cur_state - 2;
    next_state.read = (cur_state + 2) & 3;
    z <= cur_state[1] ? 1: next_state[0];
  end
  always @(posedge reset)
    if (reset)
      cur_state.write = IDLE;
endmodule
