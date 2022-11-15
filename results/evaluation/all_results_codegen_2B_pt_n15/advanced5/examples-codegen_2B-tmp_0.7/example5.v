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

reg [3:0] delay_count;
// delay_count is incremented by one for each bit received.

stateab ab_state {
  reg [3:0] delay_count;
  reg [1:0] cur_state,next_state;
  reg [2:0] i;
  reg [3:0] j;
  // The number of bits received is limited by the number of inputs.
  // The number of bits received is the sum of the width of the inputs
  // minus one.
  // Assigning the number of input bits to the input delay counter
  // generates the expected number of bits.
  input [3:0] a,b;
  input [3:0] a2,b2;
  input [3:0] a3,b3;
  input [3:0] a4,b4;endmodule
