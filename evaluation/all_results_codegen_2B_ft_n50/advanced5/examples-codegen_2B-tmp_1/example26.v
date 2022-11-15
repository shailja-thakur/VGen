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
// if one of them is high, sa is 0 and b is asserted.
always @(cur_state or a or b) 
begin
case(cur_state)
IDLE: 
	if(a==1'b1 & b==1'b1)
	begin 
	next_state = SA; 
	end
	else if(a==1'b0 & b==1'b0)
	begin
	next_state = SB; 
	end
	else
	begin
	next_state = IDLE; 
	end
SA: 
	begin
	if(a==1'b1 & b==1'b0)
	begin
	next_state = IDLE; 
	end
	else 
	begin
	next_state = SAB; 
	end
end
SB:
	begin
end
end
endmodule
