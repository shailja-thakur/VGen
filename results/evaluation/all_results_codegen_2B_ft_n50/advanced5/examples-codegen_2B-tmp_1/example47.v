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
// if both input are low, state changes to IDLE. 
always @(posedge clk or negedge reset)
if(!reset) cur_state <= IDLE;
else cur_state <= next_state;
// nest state transitions generation:
always @(cur_state)
case(cur_state)
IDLE : next_state <= SA;
SA : next_state <= (a&b) ? IDLE : SB;
SB : next_state <= (a&b) ? SA : SAB;
SAB : next_state <= p ? IDLE : SAB;
default : next_state <= IDLE;
endcase
// Output z when in SA or SAB:
assign z = (cur_state == SAB || cur_state == SA) ? 1:0;
endmodule
