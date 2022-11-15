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
reg [1:0] a,b,z;
always #( SET_SIG_MASK_BY_SIG(a,1,0), SET_SIG_MASK_BY_SIG(b,1,1) ) begin a: = reset; b = clk; z = reset & a; end
always       #( SET_SIG_MASK_BY_SIG(a,0,1), SET_SIG_MASK_BY_SIG(b,1,1) ) begin b: = reset; z = reset & b; end
always       #( SET_SIG_MASK_BY_SIG(a,1,1), SET_SIG_MASK_BY_SIG(b,0,0) ) begin a = clk; b = z; end
always       #( SET_SIG_MASK_BY_endmodule
