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
reg [1:0] z;
always @(posedge clk) begin
    if (reset)
	cur_state <= IDLE;
    else if (a)
	cur_state <= SA;
    else if (b)
	cur_state <= SB;
    else
	cur_state <= IDLE;
    next_state <= cur_state;
    if (next_state == SA)
	z <= b;
    else if (next_state == SB)
	z <= a;
    else if (next_state == IDLE)
	z <= 0;
    else if (next_state == SAB)
	z <= 1;
    else
	z <= 0;
    if (next_state == SA || next_state == SB)
    	next_state <= cur_state;
    if (next_state == IDLEend
endmodule
