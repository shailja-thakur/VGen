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
// else if a is high but b is not, state changes to SA.
// else if b is high but a is not, state changes to SB. 
always @(posedge clk or posedge reset)
begin 
if(reset || cur_state == SAB)
	cur_state <= IDLE;
else 
cur_state <= next_state;
end 
// State machine
always @(*) 
begin
case(cur_state)
IDLE: begin //Sets the output to low.
z = 0;
if (a == 1 && b == 1) next_state = SAB;
else if (a == 1 && b == 0) next_state = SA;
else if (a == 0 && b == 1) next_state = SB;
else next_state = IDLE;
end
SA: begin //Sets the output to low ifendmodule
