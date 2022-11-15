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
reg [1:0] state=[IDLE,SA,SB,SAB];
reg [1:0] output;
always begin
output=0;
// Set up state and outputs based on earlier state.
next_state = 0;
if( ++cur_state[0] > 1 ){
next_state=0; // IDLE
} else if( cur_state[1] == 1 && cur_state[0] == 0 ){
next_state=1; // SA
} else if( cur_state[1] == 0 && cur_state[0] == 0 ){
next_state=2; // SB
} else if( cur_state[1] == 1 && cur_state[0] == 1 ){
next_state=3; // SAB
} 
case(state){
case IDLE:
if( a > 0 && b >end
endmodule
