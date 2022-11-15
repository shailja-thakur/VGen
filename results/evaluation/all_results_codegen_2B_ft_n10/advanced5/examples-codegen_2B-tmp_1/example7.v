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
// if only b is high, state changes to IDLE
// if only a is high, state changes to SA
// to IDLE
always@(posedge clk, posedge reset)
if(reset || cur_state == IDLE)
	begin
	cur_state <= IDLE;
	z <= 1'b0;
	end
else
	begin	
	case (cur_state)
	IDLE:
	begin
	zh <= 1'b0;
	end
	SA:
	begin
	zh <= 1'b0;
	if (a == 1 && b == 0)
	cur_state <= SA;
	else if (b == 1)
	cur_state <= IDLE;
	end
	SB:
	begin
	zh <= 1'b0;
	if (a == 1 && b == 0)
	curend
end
endmodule
