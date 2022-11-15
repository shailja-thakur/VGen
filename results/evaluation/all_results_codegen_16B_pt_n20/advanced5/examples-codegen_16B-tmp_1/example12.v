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
reg z,ediit;
always @(posedge clk) begin
	switch(state()) {
		case IDLE: 		z <= 0;
									if(a && b)
											next_state <= SAB;
		case SAB:	ediit <= 1;
		case A:	if(a)
									next_state <= SA;
				else
									z <= 1;
		case SA:	if(b)
									next_state <= SB;
		case B:	if(b){
									next_state <= SAB;
									ediit <= 0;
								}
								else
										next_state <= IDLE;
		case SB:	if(a){
									next_state <= SAB;
									ediit <= 0;
								}
									else
										next_state <= IDLE;
	}
	end
endmodule
