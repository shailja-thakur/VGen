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

parameter s0 = 0;
parameter s1 = 1;

reg[1:0] current_state, next_state;


always @(posedge clk or posedge reset)
begin
 if (reset)
 current_state <= 0;
 else
 current_state <= next_state;
end

always @(current_state or in)
begin
 case(current_state)
 s0 : begin
 if (in == 1) 
next_state = s0;
 else if (in == 0)
next_state = s1;
 else
next_state = s0;
 end
 s1 : begin
 if (in == 1)
 next_state = s1;
 else if (in == 0)
next_state = s0;
 else
next_state = s1;
 end
endcase
end

always @(endmodule
