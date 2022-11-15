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
// If not, z is set to 0
always @(posedge clk)
begin
	cur_state <= reset ? IDLE :
		cur_state <= SA ? SA :
		cur_state <= SB ? SB :
		cur_state <= SAB ? SAB :
		IDLE;
end

// THIS IS KEY
// The program requires the following generator technique.
// Initialize cur_state to IDLE and interconnect one's timers such that:
// 1) when previously interval was two, now interval is three
// 2) now up, we check if second and third are both high or if third is low
// 3) If cur_state is IDLE and order of the ones addresses is T3-T2-T1
// (where T1 and T2 are sequential numbers in the next list, and T3 is the time interval)
// change to SAB then for loopendmodule
