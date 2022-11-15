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

initial begin:
 present_state = 0;
 next_state = 0;
 out=0;
  lsfsm_${IL}(clk,reset,in,out,present_state,next_state);
end

always @(posedge clk or posedge reset) begin
 case(present_state)
   0:
     begin
       if (in=1) begin
         next_state = 0;
         out=1;
       end 
     end
     case(next_state)
       0:
         begin
           case(present_state)
              0:
               end
           end
           case(next_state)
              0:
               begin
                 if (in=1) begin
                    next_state = 0;
                    u_${P}_out = out;
                 end
               end
               case(next_endmodule
