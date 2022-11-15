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
// if only one of a or b is high, the other state is selected.
always @(posedge clk)
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
if(a)
next_state <= SA;
else if(b)
next_state <= SB;
else
next_state <= IDLE;
z <= 0;
end
SA: begin
if(a)
next_state <= SA;
else
next_state <= SAB;
z <= 0;
end
SB: begin
if(b)
next_state <= SB;
else
next_state <= SAB;
z <= 0;
end
SAB: begin
if(a)
next_state <= SAend
end
endmodule
