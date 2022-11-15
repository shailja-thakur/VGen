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
// If only a is high, then if state is SAB, next state is SB. 
// If b is high and state is SAB, next state is IDLE. 
generate 
if (cur_state == IDLE) begin
next_state = (a==0) ? ((b==1) ? SAB : SB) : (a==1 ? SAB : IDLE);
// Loop in current state until input a goes low.
end else begin
next_state = (a==0) ? ((b==1) ? SAB : SB) : ((a==1) ? SAB : IDLE);
// Loop in current state until input a goes low.
end
// State output logic:
// If current state is SAB, output z high.
// If current state is SB, output z low.
// SAB: z = 1;
// SB: z = aendmodule
