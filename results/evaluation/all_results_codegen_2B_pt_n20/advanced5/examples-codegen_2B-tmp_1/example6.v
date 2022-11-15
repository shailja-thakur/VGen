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
    cur_state = FIELD(reset,1);
end

always @(posedge clk)
begin
    next_state = IDLE;
  #pragma FSM(idle_fsm)
  default: ASSERT_START();

z_fsm(
  input a,
  input b,
  output next_state,
  reg z )
{
  reg cur_state = FIELD(cur_state,1);
  // State transitions as defined in "example", but with gone directly to delay()
  // This way, new timer declarations won't get cleared by the program until we fall
  // out of this function.
  register DFA::STATE s0 = {0,cur_state,next_state,0,0, {},{}};
  static struct RegList
end
endmodule
