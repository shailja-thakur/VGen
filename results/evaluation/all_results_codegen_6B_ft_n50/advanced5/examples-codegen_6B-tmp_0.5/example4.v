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
// if input a is low and b is high, state changes to SB.
always @(cur_state,a,b) 
	begin 
	if(a==1 && b==1) 
	cur_state = SAB; 
	else if(a==0 && b==1) 
	cur_state = SA; 
	else if(a==1 && b==0) 
	cur_state = SB; 
	else 
	cur_state = IDLE; 
	end 
// State machine to control z output.
always @(cur_state,a,b) 
	begin 
	case(cur_state) 
	IDLE: if(a==0 && b==0) 
	z = 0; 
	SA: ifend
endmodule
