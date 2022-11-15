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
begin mod_z;
var double iq1, iq2; //This will get the states' outputs with each order.
if (a = 1) {
  iq1 = 1;
  iq2 = 0;
} else if (b = 1) {
  iq1 = 0;
  iq2 = 1;
} else {
  iq1 = 0;
  iq2 = 0;
}
if(cur_state == IDLE) {
  if((iq2 && iq1)) {
    if(next_state == 1) next_state = 2;
    if(next_state == S1) next_state = S2;
    else next_state = IDLE;
  }
}
if(cur_state == S1) {
  if((iq1 && iq2)) {
    if(next_state == 2) nextend
endmodule
