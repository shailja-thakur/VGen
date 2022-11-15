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

reg [1:0] INVERT;

begin
   initial begin olddir
      // Warning: Do not turn the direction pins back to active input!
      INVERT <= '0';
      // Do not turn the direction pins back to active input!
      // A: pinout.DIO_bit(1);
      // B: pinout.DIO_bit(2);
      // c: pinout.DIO_bit(3);
   end olddir;
   initial !olddir hello,1,0; 
   initial state1,0;
   initial state2,0;
   initial state3,0;
   initial Idle;
begin
//////////////////////////////////////////////////////////
state1 : next_state = clk'd and not INVERT'd ? S1 : Idle;
transition 
  S1 : S1 -> next_state, INVERT, Idle,end
end
endmodule
