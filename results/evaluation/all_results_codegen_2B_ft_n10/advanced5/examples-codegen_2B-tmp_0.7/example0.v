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
// if input a and b are both low, state changes to IDLE. 
// if input a is high and input b is low, state changes to SA. 
// if input a is low and input b is high, state changes to SB. 
always@(posedge clk)
	if(reset)
	cur_state <= IDLE;
	else
	cur_state <= next_state;
	// next state
always@(*)
	case(cur_state)
	IDLE:
	begin
	next_state <= SA;
	casez({a,b})
	2'b00: next_state <= IDLE;
	2'b01: next_state <= SA;
	2'b10: next_state <= SAB;
	2'b11: next_state <= IDLE;
	endcase
	end
	SAendmodule
