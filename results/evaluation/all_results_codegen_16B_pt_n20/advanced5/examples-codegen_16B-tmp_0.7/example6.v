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
always @(posedge clk or posedge reset)
begin
cur_state <= IDLE;
if (a) begin
cur_state <= SA;
end else if (b) begin
cur_state <= SB;
end else if (a and b) begin
cur_state <= SAB;
end end
next_state <= IDLE;
if (cur_state == SA and b) begin
next_state <= SB;
end else if (cur_state == SB and a) begin
next_state <= SA;
end else if (cur_state == SAB and a and b) begin
next_state <= SAB;
end else if (cur_state == SAB and a and not b) begin
next_state <= SA;
end else if (cur_state == SAB and not a and b) begin
next_state <= SB;
end else if (curend
endmodule
