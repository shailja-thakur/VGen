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
// If only a or b is high, the state change to SB or IDLE.
always @(*) begin
cur_state <= next_state;
end
always @(*) begin
case(cur_state)
IDLE: begin 
next_state <= a ? SA : IDLE;
end
SA: begin
next_state <= b ? SAB : SA;
end
SB: begin
next_state <= a ? SB : IDLE;
end
SAB: begin
next_state <= a ? SAB : b ? SAB : IDLE;
end
endcase
end
// Logic to generate output z
always @(*) begin
case(cur_state)
IDLE: begin
z = 0;
end
SA: begin
z = 0;
end
SB: begin
z = 0;
end
SAB: begin
z = 1;
endendmodule
