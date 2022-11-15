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
// z is assigned zero in other states
wire [2:0] in_a, in_b;
always @(posedge clk) begin
  cur_state = (a == z ? IDLE : (b == z ? SA : (a == z ? SAB : SB)));
  next_state = (cur_state == IDLE ? SA :
                cur_state == SA ? SAB :
                cur_state == SB ? SAB :
                IDLE);
  z <= next_state;
end
*/
// The following is a combined FSM with inputs a and b in any order
// This is an FSM module abro(
// input clk,
// input reset,
// input a,
// input b,
// output z );
// parameter IDLE = 0,
// SA = 1,
// SB = 2,
// SAB = 3endmodule
