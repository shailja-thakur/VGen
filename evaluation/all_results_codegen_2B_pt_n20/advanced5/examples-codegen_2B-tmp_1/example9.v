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

// @author
// Bjoern Michaß (Peter-Martin responsible)
// End Of Moboili/VPL version

// FSM Package 1,0.1

// FSM example application

// The main logic consists of the follownig procedure:
// 	input 	    clk 		   reset
// 	general 	  a 		   b 	
// 	value 0 	  0 		   0
// 	value 1	  1 		   0
// 	value 1	  0 		   1
// 	value 1	  1 		   1
//		...
// 	value 1	  1 		   1
// 	value 0 	  0 		   1
// 	end		   update     next
// 	intent 0	  start 	  restart
// endmodule
