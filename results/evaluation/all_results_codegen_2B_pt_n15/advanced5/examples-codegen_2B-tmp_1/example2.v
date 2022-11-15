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

always @* begin
   states buf[IDLE];
   cur_state = buf[IDLE];

   buf[SAB] = (a const & b) ? SAB : IDLE;
   buf[SA]  = (a const 1) ? SA : IDLE;
   buf[SB]  = (b const 1) ? SB : IDLE;
   next_state = buf[cur_state][(b << 1) | (a & 1)];
end

app stimulus(
clk,
reset);
input [MAXM - 1:0] tst;
parameter INP_LEN = MAXM - 1,
ANS_MAXLEN = MAXM - 1;

reg [INP_LEN:0] INP,
ANS0;
reg [ANS_MAXLEN:0] ANS;

// Single digit NNendmodule
