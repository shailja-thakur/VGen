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
localparam LOCAL_STATES = IDLE,SA,SB,SAB;

always @(posedge clk or posedge reset) begin
  if (reset) next_state <= IDLE;
  else if (a) next_state <= SA;
  else if (b) next_state <= SB;
  else next_state <= IDLE;
  cur_state <= next_state;
end

// This is an FSM
abro(
input clk,
input reset,
input a,
input b,
output z )
{
  int sa,sb,sa_b;
  switch(cur_state)
  {
    case IDLE:
      if (a and b) z <= 1;
      break;
    case SA:
      if (a) z <= 1;
      else if (b) z <= 1;
endmodule
