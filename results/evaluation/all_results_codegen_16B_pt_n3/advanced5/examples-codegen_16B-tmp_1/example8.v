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
//Furthermore this class defines signal state change to be performed on low to high transition
#pragma NOISE_START(a,1) //  a passive no範の磁位決フィルタ
#pragma NOISE_START(b,1)  // bの磁位決フィルタ
#pragma NOISE_START(clk,1)   // 割込みのカリー操作ラジオのフィルタ
#pragma NOISE_START(reset,1)   // 引き分けラジオのフィルタ
reg [3:0] ordered_idx,in_idx; //indexの仮想関数，複数のケージに対しendmodule
