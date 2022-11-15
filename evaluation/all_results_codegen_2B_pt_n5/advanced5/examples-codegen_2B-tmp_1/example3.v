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
wire [7:0] tmp_a1,tmp_a2;
function state_logic(
input falseedge,
input trueedge)
{
    if     ( cur_state==SAB      and falseedge) return SA3;
    else if( cur_state==SA       and trueedge) return SA2;
    else if( cur_state==SB       and falseedge) return SB0;
    else if( cur_state==SB       and trueedge) return SB1;
    else if( cur_state==SAB      and trueedge) return SAB0;
    else if( cur_state==SAB      and falseedge) return SAB1;
    else if( cur_state==IDLE     and falseedge) return IDLE0;
    else if( cur_state==IDLE     and trueedge) return IDLE1;
    else                        endmodule
