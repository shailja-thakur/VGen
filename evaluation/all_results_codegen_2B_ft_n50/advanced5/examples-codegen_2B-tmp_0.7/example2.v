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
// if input a and b either both are high or both are low, 
// state changes to SA.
// if input a and b are both low, state changes to SB.
always@(posedge clk) 
	if(reset | (cur_state == SA && a && b) | (cur_state == SB && b))
	cur_state <= IDLE;
	else
	cur_state <= next_state;
always@(*)
	case(cur_state)
	IDLE:
	begin
	next_state <= SA;
	z <= 0;
	end
	SA:
	begin
	z <= 0;
	next_state <= SA;
	end
	SB:
	begin
	next_state <= SB;
	z <= 0;
	end
	SAB:
	begin
	next_state <= SABend
endmodule
