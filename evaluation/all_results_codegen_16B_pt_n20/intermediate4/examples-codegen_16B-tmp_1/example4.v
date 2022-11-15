// Design a Moore state machine with two states 0 and 1, one input in, and one output out. Reset state is 0.
module simple_fsm(clk, reset, in, out);
input clk;
input reset;
input in;
output out;
wire out;
reg present_state, next_state;
// In state 0, if in=1, stay in state 0. In state 0, if in=0, go to state 1
// In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
// out=1 in state 0 and out=0 in state 1
always @(posedge clk or posedge reset) begin
 case(present_state)
          0 :  // state 0
          if(reset == 0)
          next_state <= 0;
  else
          next_state <= present_state;
 DAF : // state 0
  case(present_state)
          0 :  // state 0
          if(in == 1)   next_state <= DAF;
          else if(in == 0) next_state <= 0;
  case(DAF)
          1 :  // state 1
          if(in == 1)  next_state <= 1;
          else 
          next_state <= DAF;
Fout: // state 1
  case(present_state)
          1 :  // state 1
          if(in == 1)  next_state <= Fout;
          else if(out ==end
endmodule
