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
// Otherwise, if any one of them is high, state changes to the next state.
always @(cur_state or a or b) begin
// Reset the next state to IDLE if reset is asserted high.
next_state <= IDLE;
// Set state based on input only when cur_state is idle. 
case(cur_state)
IDLE: begin 
if (a) next_state <= SAB;
if(b) next_state <= SA;
if (a&b) next_state <= SAB;
end
SA: begin
if (a) next_state <= SAB;
if (b) next_state <= SAB;
if(a&b) next_state <= SAB;
end
SB: begin
if (a) next_state <= SA;
if (b) next_state <= SAB;
if(a&b)end
end
endmodule
