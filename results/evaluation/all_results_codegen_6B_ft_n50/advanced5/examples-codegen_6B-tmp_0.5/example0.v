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
// If a or b is asserted, then the state change to SB or SA.
always @(cur_state or a or b)
begin 
	if(a && b) 
	begin
	cur_state <= SAB;
	end 
	else if(a || b) 
	begin
	cur_state <= SB;
	end
	else if(cur_state == SAB)
	begin
	cur_state <= SAB;
	end
	else 
	begin
	cur_state <= IDLE;
	end
end
// State machine logic:
always @(cur_state or a or b)
begin 
	case(cur_state)
	IDLE: if(a && b)
	begin
	next_state <= SAB;
	end
	else if(a || b)
	begin
	next_end
end
endmodule
