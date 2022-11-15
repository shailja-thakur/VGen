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
// if only one of them is high, next state is determined by the following table:
// INIT
// SA
// SB
// SAB
// if SA and B are both high, SAB is selected.
always@ (posedge clk or posedge reset)
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
// next state combinational logic:
always@ (cur_state or a or b)
case(cur_state)
IDLE: begin
	if(a)
	next_state <= SA;
	else if(b)
	next_state <= SB;
	else
	next_state <= IDLE;
	end
SA: begin
	if(a)
	next_state <= IDLE;
	else
	next_state <= SAB;
	end
SB: begin
	end
endmodule
