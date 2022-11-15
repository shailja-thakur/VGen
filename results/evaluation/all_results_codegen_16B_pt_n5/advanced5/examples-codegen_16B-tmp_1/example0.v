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
reg [1:0] shr4, shr5, shr6, shr7, shr8, shr9, shr10, shr11, shr12, shr13, shr14, shr15, shr16, shr17, shr18, shr19, shr20;
reg [1:0] shr5_6, shr7_8, shr9_10, shr11_12, shr13_14, shr15_16, shr17_18, shr19_20;
reg [1:0] shr5_6_7_8, shr9_10_11_12, shr13_14_15_16, shr19_20_31;
reg [1:0] int1, int2, int3, int4, int5, int6, int7, int8;
reg [1:0] int1_2_3_4, int5_6_7_8endmodule
