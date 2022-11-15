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
// If one of input a or b is high, and the other high, the transition 
// is made dependent on one of the inputs.
// if one of input a or b is high, and the other is low, the trans
// to SAB is assigned HIGH.
always @(posedge clk) 
begin
	if (reset) 
	cur_state <= IDLE;
	else
	cur_state <= next_state;
end
always @(cur_state,a,b)
begin
case(cur_state)
/*
IDLE
SMOOTH = if a,b = 0 (0 means pressing toggle button ?);
SA = a pressed and b is high. next state: SAB.
SB = b pressed and a is high. next state: SAB.
Explicit don't wait assignment:
always @(*)
begin
case(next_stateend
end
endmodule
