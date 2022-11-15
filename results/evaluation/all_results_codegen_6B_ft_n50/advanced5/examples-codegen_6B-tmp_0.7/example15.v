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
// if input a is high but b is not, state changes to SA. 
// if b is high but a is not, state changes to SB.
always @(posedge clk or posedge reset)
begin: state_FF
	if(reset)
	cur_state <= IDLE;
	else 
	cur_state <= next_state;
end 
// Output logic:
always @(*)
begin: z_FF
	case(cur_state)
	IDLE: 
	z_reg <= 0;
	SA: 
	z_reg <= 0;
	SB: 
	z_reg <= 1;
	SAB: 
	z_reg <= 1;
	endcase
end 
always @(posedge clk or posedge reset)
begin: state_FFO
	if(reset)
	next_stateendmodule
