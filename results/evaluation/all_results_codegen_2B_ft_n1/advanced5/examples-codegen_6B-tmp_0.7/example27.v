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
// If one input is high and other is low, state changes to SB.
// If both inputs are low, state changes to IDLE.
always @(posedge clk)
begin
if(reset)
cur_state<= IDLE;
else
cur_state<=next_state;
end
// State machine to control output z.
always @(cur_state)
case(cur_state)
IDLE:
begin
z=0;
end
SA:
begin
z=0;
end
SB:
begin
z=0;
end
SAB:
begin
z=1;
end
endcase
always @(cur_state or a or b)
case(cur_state)
IDLE:
if(a&b)
next_state=SA;
else if(a)
next_state=SB;
else if(endmodule
