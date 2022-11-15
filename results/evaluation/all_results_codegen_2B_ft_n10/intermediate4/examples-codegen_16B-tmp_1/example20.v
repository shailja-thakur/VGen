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
// output out is equal to (in^out)
parameter state0=0, state1=1;
always @(posedge clk)
if (reset)
present_state <= state0;
else 
present_state <= next;
always @(*) begin
case(currentstate)
state0: begin if(in)begin nextstate = state0; out=0 ; end 
else begin nextstate =state1; out =0; end 
end
state1: begin if (in) begin nextstate=state1 ; out=0 ; end 
else begin nextstate=state0;out=1;end 
end
endcase
end
endmodule
