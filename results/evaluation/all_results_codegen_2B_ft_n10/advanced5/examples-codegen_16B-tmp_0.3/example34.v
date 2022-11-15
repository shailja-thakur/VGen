// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB
// z is assigned zero when cur_state is IDLE
reg z;
always @(posedge clk)
begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always @(cur_state or a or b)
begin
case(cur_state)
IDLE:
begin
if(a == 1 && b == 1)
begin
next_state = SA;
z = 1'b0;
end
else
begin
next_state = IDLE;
z = 1'b0;
end
end
SA:
begin
if(b == 1)
begin
next_state = SAB;
z = 1'b0;
end
else
begin
next_state = SA;
z = 1'b0;
end
end
SAB:
begin
if(a ==end
end
endmodule
