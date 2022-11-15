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
// Upon receiving signal a, state changes to SA
// Upon receiving signal b, state changes to SB

 assert(reset == 1'b0); // Assert reset line of NAND gate
 assert(clk == 1'b0); // Assert clock to FSM
 open fsm/toolset.v reg_types.v FSM;
 open fsm/toolset.v axi/toolset.vAXI;
 open fsm/toolset.v axi/toolset.vAXI __StringBuf("ns_payload.v");
 open fsm/toolset.v axi/toolset.vAXI __StringBuf("ns_params.v");

 db"hdr_rw" next_state;//
 db "step_one#00" cur_state;

 followed by steps corresponding to the current state ):

 --------
   0. 1 when received, nextendmodule
