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
// otherwise, states change to SA, SB right to the following SA.
// All these states click instead of remain as in IDLE state and can be used to determine current state further.
always @(posedge clk or posedge reset)
	if (reset)
	cur_state <= IDLE;
	else
	cur_state <= next_state;
// combinational constraints such isto:nest state 주기
	always @( * )
	begin	
	//	if A or B is high, then this is a nested SA
	//	otherwise, nest has ist here
	next_state <= INVAL_bit (cur_state,a) + INVAL_bit(cur_state,b);
	end
// combinational signal generation:
assign z = ((cur_state == SAB)|(cur_state == SAB) );
endmodule
