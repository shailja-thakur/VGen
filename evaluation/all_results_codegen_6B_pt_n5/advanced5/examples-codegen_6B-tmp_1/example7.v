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
slw a_achange_slw(
int in_val,int out_val,int out_last,
int cur_in,int cur_out,int old_pulsecount,int out_count,int old_state);

channel A, B, Z;
reg cur_A,cur_B,cur_Z;
reg in_A, in_B, in_Z;
function current_state();
begin
  cur_A = 0;
  cur_B = 0;
  cur_Z = 0;
cur_state = IDLE;
end
//Define individual states, and the transition rules.
define FSM
funct_Begin: begin
  next_state = IDLE;
end

funct_S1: begin
  cur_A = 1;
  next_state = S2;
end

functendmodule
