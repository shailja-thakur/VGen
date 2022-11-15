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
// z is assigned one when the first input is high
// z is assigned zero when the second input is high
always @(posedge clk, posedge reset)
begin
 if(reset)
 begin
cur_state <= IDLE;
 end
else
 begin
 cur_state <= next_state;
 end
end
always @(cur_state,a,b)
begin
case(cur_state)
IDLE : begin
 if(a) begin
next_state <= IDLE;
 end
 else begin
next_state <= SA;
 end
end
SA : begin
 if(b) begin
next_state <= SAB;
 end
 else begin
next_state <= SA;
 end
end
SB : begin
 if(a) begin
next_state <= SAB;
 end
 else begin
nextend
end
end
endmodule
