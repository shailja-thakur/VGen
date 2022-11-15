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
reg [7:0] machine_z;
reg [7:0] lookahead_input ARG n;
automatic proc ABRO_A, ABRO_B
(
  looped
 (
   p"    n" DO ( A .. B )
             A && A -- equality
             B && B -- equality
  );
  repeat = TRUE goto PROCARRY_A
  _
  end-looped n
);
proc PROCARRY_A, PROCARRY_B
(
A .. B
A ++
B ++
// n gets input and loicks another one on the output
looped
 (
   p "    n" DO ( A .. B )
             res_temp = A & B;
             (cur_state) = next_state;
             lookahead_input ARG cur_state;
             next_state = PROCARRY_endmodule
