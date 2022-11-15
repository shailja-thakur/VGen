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
wire [8:0] msg_a,msg_b,s_a,s_b;
// The input a and b are the last 16 bits (8 bits per bus) of the last 32 bits
// of the message. If cur_state is IDLE, these bits are all zero
// The input reset is the low bit of the last 16 bits of the message
// z[7:0] is set to the message bits
// z[15:8] is assigned the input a when cur_state is SA
// z[23:16] is assigned the input b when cur_state is SB
// z[31:24] is assigned to cur_state when cur_state is SAB
wire [8:0] t_a,t_b,s_a_0,s_b_0;
// These bits are the last 16 bits (8 bits per bus) of the last 32endmodule
