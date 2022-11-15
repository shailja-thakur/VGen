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
START STATE = IDLE;
DFF 0;
DFF 1;
DFF 2;
DFF 3;
DFF 4;
DFF 5;
DFF 6;
DFF 7;
DFF 8;
DFF 9;
DFF 10;
DFF 11;
DFF 12;
DFF 13;
DFF 14;
DFF 15;
DFF 16;
DFF 17;
DFF 18;
DFF 19;
DFF 20;
DFF 21;
DFF 22;
DFF 23;
DFF 24;
DFF 25;
DFF 26;
DFF 27;
DFF 28;
DFF 29;
DFF 30;
DFF 31;
DFF 32;
DFF 33;
DFF 34;
DFF 35;
DFF 36;
DFF 37;
DFFendmodule
