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
//S1 = 0,S2 = 0,S3 = 0 when all input signals are low, else
//S1 = 1,S2 = 1,S3 = 1 when all input signals are high, else
//S1 = 1,S2 = 1,S3 = 0 when either input signal is high irrespectively of their order, else
//S1 = 0,S2 = 1,S3 = 1 when either input signal is low irrespectively of their order, else
//S1 = 1,S2 = 0,S3 = 1 when both input signals are low irrespectively of their order, else
//S1 = 1,S2 = 1,S3 = 0 when both input signals are high irrespectively of their order, else
//S1 = 0,S2 = 0,S3 = 0 when all input signals are low irrespectively of their order, else
//Sendmodule
