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
// if only a is high, the output z goes high
always @(posedge clk, negedge reset)
begin
if (reset == 0)
cur_state <= IDLE;
else
cur_state <= next_state;
end
// Next state selector
always @(cur_state or a or b)
begin
case(cur_state)
IDLE:
begin
if (a==1 & b==1)
next_state <= SA;
else if (b==1 & a==0)
next_state <= SB;
else
next_state <= IDLE;
end
SA: next_state <= SAB;
SB: next_state <= IDLE;
SAB: if (a==1 & b==1)
next_state <= SA;
else if (a==1 & b==0)
next_state <= SB;
else ifend
endmodule
