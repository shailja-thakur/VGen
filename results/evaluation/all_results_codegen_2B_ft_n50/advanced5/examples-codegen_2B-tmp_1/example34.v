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
assign z = ((cur_state == SA) && (a == 1) && (b == 1))?1:0;
always @(posedge clk)
begin
	if (reset == 1'b1)
	begin
	cur_state = IDLE;
	end
	else
	begin
	cur_state = next_state;
	end
end 
always @(cur_state or a or b)
begin
	// The state nest: state transition logic
	case (cur_state)
	IDLE:
	begin
	if (a == 1)
	begin
	next_state = SA;
	end
	else if (b == 1)
	begin
	next_state = SB;
	end
	else
	begin
	next_state = IDLE;
	end
	end
	SA:
	beginend
end
endmodule
