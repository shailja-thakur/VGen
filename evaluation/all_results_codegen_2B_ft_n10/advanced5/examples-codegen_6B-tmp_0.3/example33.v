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
// If a or b is high, state changes to SB or IDLE.
always @(*) begin
cur_state <= next_state;
end
always @(*) begin
case(cur_state)
IDLE: begin
if (a & b) next_state = SA;
else if (a | b) next_state = SB;
else next_state = IDLE;
end
SA: begin
if (a & b) next_state = SAB;
else if (a | b) next_state = SB;
else next_state = IDLE;
end
SB: begin
if (a & b) next_state = SAB;
else if (a | b) next_state = SB;
else next_state = IDLE;
end
SAB: begin
if (a & b) next_state = SAB;
else if (a |end
end
endmodule
