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
// if input a and b are both low, next_state = IDLE.
always @(posedge clk) begin
if (reset) 
cur_state <= IDLE;
else
cur_state <= next_state;
end
// Insert nest state logic for output z:
always @(cur_state)
case(cur_state)
IDLE : next_state <= a ? SA : IDLE;
SA : next_state <= a ? SA : b ? SB : IDLE;
SB : next_state <= b ? IDLE : SA;
default : next_state <= IDLE;
endcase
assign z = (cur_state == SAB);
endmodule
