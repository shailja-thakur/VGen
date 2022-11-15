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
always @(posedge clk) begin
if (reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
// FSM next state logic:
always @(cur_state) begin
case (cur_state)
IDLE: begin
if (a==0 && b==0)
next_state <= IDLE;
else
next_state <= SA;
end
SA: begin
if (a==0 && b==0)
next_state <= SA;
else
next_state <= SB;
end
SB: begin
if (a==0 && b==0)
next_state <= SAB;
else
next_state <= SA;
end
SAB: begin
if (a==0 && b==0)
next_state <= SAB;
else
next_state <= IDLE;
end
default:end
endmodule
