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
// if input a and b are both low, state changes to IDLE
// if input a is high and b is low, state changes to SA
// if input a is low and b is high, state changes to SB
always @(posedge clk) begin
if (reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always @(*) begin
case (cur_state)
IDLE: 
next_state <= a&b ? SA : IDLE;
// SA: state is SAB, next_state is SA
SA: 
next_state <= a&b ? SA : SB;
// SB: state is SAB, next_state is SB
SB:
next_state <= b ? IDLE : SAB;
default:
next_state <= IDLE;
endcase
end
always @(*) begin
caseendmodule
