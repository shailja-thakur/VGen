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
always @ (posedge clk) begin
if (pulse_count != 0 ) 
next_state = cur_state <= IDLE ? SAB : SA;
else
next_state = cur_state == SAB ? IDLE : SB;
z <= next_state;
end
*/

STRING to_string(inout int& current_state, inout int& next, in int pulse_count, int order) // = _to_string(current_state, next, pulse_count, order)
{
  func_name = "strange";
  fout << "fsm name ";
    if (pulse_count == 0)
    {
      fout << "strange(" << string("order: ") << order << string(" ") << current_state << ". 0)\n";
    }
    else
      fout << "strendmodule
