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
void abro_FSM()
{
  if (cur_state.read() != next_state) {
    if (cur_state == IDLE && next_state == S1) {
      cur_state.write(S2); //Start of a sequence
    }
    else if (cur_state == S1 && next_state == S2) {
      cur_state.write(S3); //Start of a sequence
    }
    else if (cur_state == S2 && next_state == S3) {
      cur_state.write(IDLE); //Finished a sequence
    }
  }
}
module abro_dir()
output clk,a,b,z;
reg [3:0] in_state,out_state;
//This is a sequential FSM, but can be used as a multiplexer.  Thatendmodule
