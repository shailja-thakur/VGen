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
// if input a is high, state changes to SA. 
// if input b is high, state changes to SB.
always @(posedge clk)
if(reset) cur_state <= IDLE;
else cur_state <= next_state;
always @(*)
if(reset) next_state <= IDLE;
else next_state <= cur_state;
// Output logic.
// z is asserted 1 when the current state is SAB.
assign z = ((cur_state == SAB) || 
(cur_state == SA && b == 1) ||
(cur_state == SB && a == 1));
endmodule
