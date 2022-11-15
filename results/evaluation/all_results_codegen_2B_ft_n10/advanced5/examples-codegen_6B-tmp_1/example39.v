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
// if a or b is asserted, state changes to SIX. 
always @(posedge clk)
cur_state <= next_state;
// State machine to determine next state, z is the output on this cycle.
always @(cur_state or a or b)
case(cur_state)
IDLE : begin 
	if(a && b) next_state = SA;
	else if(a) next_state = SIX;
	else if (b) next_state = SIX;
	else next_state = IDLE;
end
SA : begin 
	if(a && b) next_state = SA;
	else if(a || b) next_state = SIX;
	else next_state = SCI;
end
SCI : begin 
	if(a && b) next_state = SCI;
	elseend
endmodule
