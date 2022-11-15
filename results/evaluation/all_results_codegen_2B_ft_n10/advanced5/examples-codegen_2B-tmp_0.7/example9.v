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
// if input a and b are both low, next_state = IDLE, state = SA
// if input a is low and b is high, next_state = IDLE.
always @(posedge clk)
if (reset)
cur_state <= IDLE;
else
cur_state <= next_state;
// Moore FSM: 
// cur_state is the state of current clock edge.
// next_state is the next state after current clock edge.
// z is asserted when current state is SAB.
always @(*)
case (cur_state)
IDLE: next_state = IDLE;
SA: next_state = SA;
SB: next_state = SA;
SAB: next_state = SAB;
default: next_state = IDLE;
endcase
always @(*)
case (cur_state)
IDLE: endmodule
