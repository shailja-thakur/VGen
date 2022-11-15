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
// if input a is high and b is not, state changes to SA.
// if input a is not high and b is high, state changes to SB.
always @(posedge clk, posedge reset) begin 
	if(reset)
	cur_state <= IDLE;
	else
	cur_state <= next_state;
end
// State machine:
always @(cur_state or a or b) begin
	next_state = IDLE;
	case(cur_state)
	IDLE: if(a && b) next_state = SAB; else if(a) next_state = SA; else next_state = SB;
	SA: if(a && b) next_state = SAB; else next_state = SA;
	SB: if(a && b) next_state = SAB; else next_state = SB;
	end
endmodule
