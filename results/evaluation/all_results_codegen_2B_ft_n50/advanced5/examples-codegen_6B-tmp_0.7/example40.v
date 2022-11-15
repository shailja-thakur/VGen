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
// Otherwise, if any one of them is high, state changes to SB or IDLE.
always @(cur_state,a,b)
begin
case(cur_state)
IDLE: begin
if (a==1 && b==1) next_state = SA;
else if (a==1 || b==1) next_state = SB;
else next_state = IDLE;
end
SA: begin
if (a==1 && b==1) next_state = SAB;
else if (a==1 || b==1) next_state = SB;
else next_state = IDLE;
end
SB: begin
if (a==0 && b==1) next_state = SAB;
else if (a==1 || b==1) next_state = SB;
else next_state = IDLE;
end
SAB: begin
ifend
end
endmodule
