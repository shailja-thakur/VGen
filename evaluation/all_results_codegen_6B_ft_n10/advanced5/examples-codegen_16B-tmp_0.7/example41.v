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
always @ (posedge clk or negedge reset)
begin
if(reset==1'b0)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always @ (a or b or cur_state)
begin
case(cur_state)
IDLE : begin
a_and_b = a & b;
a_not_b = ~a;
next_state = IDLE;
if(a_and_b)
next_state = SAB;
if(a_not_b)
next_state = SA;
if(b_not)
next_state = SB;
end
SA : begin
a_and_b = a & b;
a_not_b = ~a;
next_state = SA;
if(a_end
end
endmodule
