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
// If input a and b are both low, state changes to IDLE.
// If input a and b are both high, state changes to SA.
always @ (posedge clk or negedge reset)
begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always @ (cur_state or a or b)
begin
next_state = IDLE;
case (cur_state)
IDLE:
if(a && b)
next_state = SA;
else if (a)
next_state = SB;
end
SA:
if(a && b)
next_state = SAB;
else if (a)
next_state = SA;
end
SB:
if(a && b)
next_state = SAB;
else if (a)
next_state = SB;endmodule
