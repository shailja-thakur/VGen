// This is an ABRO FSM. 
// It outputs 1 when 1 is received for signals a and b irrespetive of their order, either simultaneously or non-simultaneously.
module abro( 
input clk,
input reset,
input  a,
input  b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;