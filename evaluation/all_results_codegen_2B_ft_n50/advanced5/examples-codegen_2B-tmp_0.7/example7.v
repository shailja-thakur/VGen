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
// if input a is high and b is low, state changes to SA. 
// if input a and b are both low, state changes to IDLE.
always @(posedge clk or posedge reset)
	if (reset)
	cur_state <= IDLE;
	else
	cur_state <= next_state;
always @(*)
case(cur_state)
IDLE: next_state <= a?SA:IDLE;
SA: next_state <= b?IDLE:SA;
SB: next_state <= a?IDLE:SA;
SAB: next_state <= b?IDLE:SA;
default: next_state <= IDLE;
endcase
// Output logic:
assign z = (cur_state == SAB)?1:0;
endmodule
