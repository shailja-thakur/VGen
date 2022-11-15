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
// Thus this is an FSM.
module abro2(
input clk, reset,  
input aa,  bb, //Note the relationship between input arguments is maintained so DC coupling is minimized.
output z,
output d);
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
// This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
// Thus this is an FSM.
module abro3(
input clk, reset,  
input aa,  bb, //Note the relationship between input arguments is maintained so DC coupling is minimized.
output z,
output s1,
output s2,
output d);
parameter IDLE = 0,
Sendmodule
