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
// Otherwise, if any one of them is high, the state change to SB or IDLE.
always @(*) begin
cur_state = next_state;
case(cur_state)
IDLE: begin
if (a==1 && b==1)
next_state = SA;
else if (a==1 || b==1)
next_state = SB;
else 
next_state = IDLE;
end
SA: begin
if (a==1 && b==1)
next_state = SAB;
else 
next_state = SB;
end
SB: begin
if (a==1 && b==1)
next_state = SAB;
else 
next_state = IDLE;
end
default: next_state = IDLE;
endcase
end
// Output logic:
// Set z to 1 when current state is SABendmodule
