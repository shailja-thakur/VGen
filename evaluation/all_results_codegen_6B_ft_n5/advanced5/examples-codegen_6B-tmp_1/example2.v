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
// If one of the input is a or b is high, next state is SA or SB. 
// If both inputs are low, next state is IDLE. 


always @(*) begin
	cur_state=next_state;
end

always @(a or b or cur_state)
begin 
	case(cur_state)
	IDLE: if (a & b) 
	next_state = SA;
	else if (~(a|b)) 
	next_state = SB;
	else 
	next_state = IDLE;

	SA: if (a & b)
	next_state = SAB;
	else 
	next_state = IDLE;
	
	SB: if (a & b)
	next_state = SAB;
	else 
	next_state = IDLE;
	
end
endmodule
