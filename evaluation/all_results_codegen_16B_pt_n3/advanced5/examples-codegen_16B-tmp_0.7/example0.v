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
always@(posedge clk,
  posedge a,
  posedge b)
begin
  if (cur_state == IDLE)
    next_state <= SB;
  else if (a == 0 && b == 0)
    next_state <= IDLE;
  else if (a == 0)
    next_state <= SA;
  else if (b == 0)
    next_state <= SB;
  else
    next_state <= SAB;

  if (next_state != cur_state)
  begin
    cur_state <== next_state;
    z <= 1;
  end
end
endmodule
