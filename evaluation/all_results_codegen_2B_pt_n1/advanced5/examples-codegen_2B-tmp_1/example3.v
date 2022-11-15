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
pass p;

always @(posedge clk)
  if ( cur_state = S3
    && (a == 1 and b ==0 )
    || ( a == 1 and b ==1 )
    || ( b == 1 and a == 0) )
   {
   next_state = S1;
   }
  else if ( cur_state = S2
    && (a == 1 and b ==0 )
    || ( a == 1 and b ==1 )
    || ( a == 0 and b == 1) )
     {
     next_state = S3;
     }
  else if ( cur_state = S3
     && (a == 0 and b ==1 )
     || ( a == 1 and b ==0 )
     || ( a == 1 and b ==1 ) )
     {
     next_state = S2;
     endmodule
