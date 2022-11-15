// This is an FSM.
module abro(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
module abro_head(
output z,
input a, b);
// This is an FSM with the output of TBC and TOO high when reset is high, and LOW when else.
module abro_tail(
 input clk,
#if 1==1
a_tbc, b_tbc,
#elif 1==0
a_too, b_too,
#else
a_fs1, b_fs1, a_fs2, b_fs2, a_fs3, b_fs3,
#endif
 r_reset,
 output z,
 output f_sleep);

// This module can be entered only trough Suspend sleep
module abro_suspend(
input clk,
input iack,
input cki,
input cko,
input auto1,
input S1_in,
input S2_in,endmodule
