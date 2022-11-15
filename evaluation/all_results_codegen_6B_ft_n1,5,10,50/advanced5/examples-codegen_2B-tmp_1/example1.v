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
wire [64:0] prev_state;
wire [2:0] next_pri_state;
reg byte state_req,nmi_req,ack_req;
reg leading;
reg [63:0] prev_z;
reg [63:0] cur_z;
reg [59:0] prev_state;
reg [59:0] cur_state;
reg [1:0] prev_pri_state;
reg [1:0] cur_pri_state;

always @(posedge clk)
begin :
inst . begin
//	if ( reset && ! b )	// if b is low but the reset port is high
//		write_Duint_io( 64, 0 ); // Cur state = Idle
//	if ( reset && b )	// if b is high but the reset port is low
//		write_Duint_end
end
endmodule
