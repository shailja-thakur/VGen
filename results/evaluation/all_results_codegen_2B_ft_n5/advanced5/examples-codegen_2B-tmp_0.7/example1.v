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
// if input a is high and input b is low, state is SA. 
// if input a is low and input b is high, state is SB. 
always@(posedge clk, posedge reset)
begin
if (reset == 1'b1)
cur_state <= IDLE;
else
cur_state <= next_state;
end
// Output logic:
always@(*)
begin
case(cur_state)
IDLE:
z = 0;
SA:
z = 0;
SB:
z = 0;
SAB:
z = 1;
default:
z = 0;
endcase
end
// State transitions:
always@(*)
begin
case(cur_state)
IDLE:
begin
if(a==1'b0 && b==1'b0)
next_state = IDLE;
else ifend
endmodule
