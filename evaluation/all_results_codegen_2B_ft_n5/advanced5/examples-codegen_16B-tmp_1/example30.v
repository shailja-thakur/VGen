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
// z is assigned 0 when cur_state is IDLE
always @ (posedge clk, posedge reset)
begin
if(reset)
cur_state = IDLE;
else
cur_state = next_state;
end
always @ ( a, b, cur_state)
begin
case(cur_state)
IDLE: begin
if(a && b) next_state = SA;
else next_state = IDLE;
end
SA: begin
if(a) next_state = SA;
else if(b) next_state = SB;
else next_state = IDLE;
end
SB: begin
if(b) next_state = SB;
else if(a) next_state = SAB;
else next_state = IDLE;
end
SAB: begin
next_state = SAB;
end
default: next_end
endmodule
