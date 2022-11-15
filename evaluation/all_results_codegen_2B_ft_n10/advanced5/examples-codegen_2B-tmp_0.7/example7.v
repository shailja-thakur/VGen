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
// if input b is high only, state changes to SA.
// if input a or b is low, state changes to SB.
// if none of above three conditions is met, state remains at the same state.
always @(posedge clk or posedge reset)
begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always @(cur_state)
begin
case(cur_state)
IDLE: begin
if(a&b)
next_state <= SA;
else if(b)
next_state <= SB;
end
else
next_state <= cur_state;
endcase
end
// Output logic
always @(cur_state)
begin
case(cur_state)
SA: begin
z = 1;
end
SB: begin
z = 0;
end
endcaseendmodule
