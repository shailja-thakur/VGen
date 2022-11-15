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
reg [1:0] state;
wire result;
reg idle = 0;
// instantiation of logic functions
reg SA1 = 0;
reg SB1 = 0;
reg SAB1 = 0;
reg SA0 = 0;
reg SB0 = 0;
reg SAB0 = 0;
reg FSM_INSTANTIATION = 0;

// FSMInstantiation = [ a, b, clk, reset, state ]
function FSMInstantiation(clk,reset,SA1,sb1,SAB1,sa0,sb0,SA0,SB0,SAB0);
begin FSM_instance:
FSM_instance  [ ! reset, ! (a = IDLE), ! (a = IDLE), ! (b = IDLE), ! (z = IDLE)] else:
setnextstate SA0:
if ((sa0end
endmodule
