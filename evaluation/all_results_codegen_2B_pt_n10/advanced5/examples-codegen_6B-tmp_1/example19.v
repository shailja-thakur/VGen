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
//To construct the FSM follow the steps 60 and 61 of underDesign.
real func(in clk, in reset, in a, in b);
//Dont support @line 36 "../../src/imu/acc.vhd"
{
 next_state = (b) ? S1 : IDLE;
}
//@line 41 "../../src/imu/acc.vhd"
signal [3:0] final; //This is the output of the read.
//@line 41 "../../src/imu/acc.vhd"
final <<= (int)(func(clk, reset, a, b) & final);
//@line 39 "../../src/imu/acc.vhd"
next_state = (a) ? S2 : next_state; //@line 46 "../../src/imu/acc.vhd"endmodule
