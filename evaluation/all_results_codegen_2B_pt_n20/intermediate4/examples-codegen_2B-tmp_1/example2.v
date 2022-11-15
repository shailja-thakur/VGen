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

always @(posedge clk)
   if ((reset.read()) && (clk.read() == 1)) {
     out.write(reset.read());
     present_state = (out.read() == in.read())? 1:0;
   } else {
     next_state = present_state;
   }
    
always @(posedge clk)
  if ((clk.read() == 1) || (clk.read() == 0)) {
    present_state = next_state;
                    if (in == 1) {
                       if (next_state == 0) {
                          out.write(1);
                       } else {
                          out.write(0);
                       }
                    }
                    else {
                       if (next_state == 0) {
                          out.write(0);
                       } else {
                          out.endmodule
