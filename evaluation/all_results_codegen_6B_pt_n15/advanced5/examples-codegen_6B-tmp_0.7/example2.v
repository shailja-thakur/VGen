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
always @ (posedge clk or negedge a or b)
begin
   if(next_state <> IDLE) begin
      z <= 1;
      cur_state <= next_state;
      next_state <= SAB;
   end
end

// The input signals are assigned to the signals a, b, and clk.
// The individual signals are high when the respective signal is high.
// The input signals are connected to the output signals a and b via an FSM.
// The FSM is controlled by the state of the input signals.
// The FSM executes the following transitions:
// If both the input signals a and b are high, the FSM outputs 1.
// If both the input signals a and b are low, the FSM outputs 0.
// If only one of the input signals a and b is high, then the FSM outputs 0.
// Ifendmodule
