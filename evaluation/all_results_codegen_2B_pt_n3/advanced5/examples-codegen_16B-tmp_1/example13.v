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
//a should come as 0 or 1 depending on the order or reverse according to the graph
module gavro(
input clk, reset, a, b,   //Permutation of the pin signal order is irrelevant based upon the value of this parameter.
output z,  //Permutation of the pin signal order is irrelevant based upon the value of this parameter.
output out_three); 

reg [1:0]        flagHoldCRC;
reg[(a + (b ? 1 : 0) ):0]  hold_register;

reg byte last_byte;

always clk_m=~clk;
always clk_n=~clk;
always clk_u=~clk;                                          // According to s1 r1 we know one of the clock edges is high high enough to make state 
always clk_v=~clk;                                          endmodule
