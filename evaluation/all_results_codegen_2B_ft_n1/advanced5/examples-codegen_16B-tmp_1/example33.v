// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB
// z is assigned to x when cur_state is IDLE, and x is true
// The state machine operates on cur_state
// when cur_state is IDLE, and x is high, z is unchanged
always@(posedge clk or negedge reset)
	begin
	if(reset)
//set the current state as IDLE, output 0, and preset the next state
// to SA
	cur_state <= IDLE;
	z <=0;
// when x and y are both high and curent state is IDLE
	else if(cur_state == IDLE && x==1 && y==1)
	begin
//set the current state to SA, the next value for x, and the 
// next state to IDLE
	cur_state <= SA;
	x <= 1;
	next_state <= IDLE;
// when previous state is SAend
end
endmodule
