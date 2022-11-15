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
// if input a is high and input b is low, state changes to SA.
// if input a and b are both low, state changes to IDLE.
always @(posedge clk)
if (reset) cur_state <= IDLE;
else cur_state <= next_state;
always @(*)
if (cur_state == SA)
begin
if (a) next_state <= SB;
else next_state <= IDLE;
end
else if (cur_state == IDLE)
begin
if (b) next_state <= SAB;
else next_state <= IDLE;
end
else if (cur_state == SAB)
begin
if (b) next_state <= IDLE;
else next_state <= SAB;
end
endmodule
