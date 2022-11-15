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
//Inputs a and b are instantaneously transmitted to the output z.
//The Tx and Rx FSM are NOT synchronised, and the outputs may be delayed by 1 clock cycle.
module t1(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
//Inputs a and b are instantaneously transmitted to the output z.
//The Tx and Rx FSM are NOT synchronised, and the outputs may be delayed by 1 clock cycle.
module t2(
input clk, reset,  
input a,  b,
outputendmodule
