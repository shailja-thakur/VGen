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
function input_state(){
if (( (z == 1) && (a != 0) ) || ( (z == 1) && (b != 0) )) {next_state = S1;}
else if ( ( (z == 0) && (a != 0) ) || ( (z == 0) && (b != 0) )) {next_state = S2;}
else if (( (z == 5) && (a != 0) ) || ( (z == 5) && (b != 0) )) {next_state = S3;}
else {next_state = IDLE;}
}


A:  
enable port a;
 decode undefined;
if (port_{a} == 1) GOTO A;
  fork s_a b;
expect in_ff or_ss (1,0,0,0, &next_state);
next_state = IDLE;

endmodule
