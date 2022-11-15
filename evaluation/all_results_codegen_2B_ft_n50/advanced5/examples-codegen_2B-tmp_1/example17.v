// This is an FSM 
module abro(
input clk,
input reset,
input a,
input b,
output z 
);
parameter IDLE = 0, SA = 1, SB = 2, SAB = 3;
reg [1:0] cur_state,next_state;
// Update state or reset on every clock edge.
// Output z is asserted 1 when the current state is SAB.
// Nest state generation logic:
// if input a and b both are high, state changes to SAB. 
// if a is high only, state changes to SA.
// if b is high only, state changes to SB.
// if none of a or b are high, remain IDLE.
// cur_state registers last input values of a and b, and outputs z only if 
// it is one of the levels of SA, SB, or SAB.
always @(posedge clk or reset)
begin
if (reset == 1'b1)
cur_state <= 3'b000;
else
cur_state <= next_state;
end
always @(*)
case (cur_state)
IDLE: next_state <= (a & b) ? 1 : IDLE; 
SA: next_state <= (a & b) ? 1 : IDLE; 
SB: next_state <= (a & b) ? 1 : IDLE; 
SAB: next_stateendmodule
