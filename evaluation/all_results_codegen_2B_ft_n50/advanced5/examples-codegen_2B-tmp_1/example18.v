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
// Otherwise, current state is 'idle'
always@(posedge clk or posedge reset)
begin
if (reset)
cur_state <= {2{1'b0}};
else
cur_state <= next_state;
end
always@(*)
begin
next_state <= SA;
case(cur_state)
IDLE:
if(a==b)
next_state <= SA;
else
next_state <=	IDLE;
SA:	
if(a == 0 && b == 0)
next_state <=SID;
else
next_state <= SA;
SID:
if(a == 0 && b == 1)
next_state <=SAB;
else
next_state <= SA;
SAD:
if(a == 0 && b == 1)
next_state <=AB;
else next_state <= SAend
endmodule
