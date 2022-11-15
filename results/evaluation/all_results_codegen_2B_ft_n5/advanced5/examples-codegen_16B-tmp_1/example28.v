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
// z is assigned zero when cur_state is IDLE
always @ (posedge clk or posedge reset)
	if(reset)
	cur_state <= IDLE;
	else
	cur_state <= next_state;
always @ (a or b or cur_state)
	begin
	// Register a and b
	x = a;
	y = b;
	case (cur_state)
	IDLE: 
	begin //cur_state
	if ( x && y) //cur_state is IDLE and both x and y are 1s
	next_state <= SAB;
	// Driving z high when cur_state is IDLE
	z = 0;
	end //end case of IDLE
	SA: 
	begin //cur_state
	if ( x && y) //cur_state is SA and both x and y areend
endmodule
