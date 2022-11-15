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
if(reset)
cur_state <= IDLE;
// Overflow is also very important, enabling your code to execute beyond
// the operating points of your inputs. In this case, this can happen if the edge
// flip flops receive values on the 2nd positive edge, so no new value will be outputted
// putting this into the state machine is a very good idea.
// Here we catch the overflow condition on both edges of "a" without a glitch
// even when a or b change values suddenly.
else if ((cur_state == IDLE) & a & b)
cur_state <= SAB;
else if ((cur_state == IDLE) & a)
cur_state <= SA;
else if ((cur_state == IDLE) & b)
cur_state <= SB;
// Remember all state transitions are non-blocking!
end
endmodule
