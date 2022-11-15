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
always {present_state = next_state = 0;}
assign out = present_state;

always @(posedge clk) begin
  switch(reset)
  begin
    case(0):
      next_state = 0;
      out = present_state;
      break;
    case(1):
      next_state = 2;
      break;
  end
end

always @(posedge clk) begin
  //  present_state will be overwritten later, keep it in a register
  if(present_state == 0) begin
    if(in == 1) present_state <= 1;
    else if((in==0) & (present_state == 2)) present_state <= 0;
  end else begin
    if(in == 1) present_state <= 1;
    else if((in==0) & (present_stateend
end
endmodule
