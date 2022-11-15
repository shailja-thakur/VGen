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
always@(posedge clk or negedge reset)
begin
if (reset)
present_state <= reset0; // changing this random variable
else
present_state <= next_state; //changing this random variable
end
// State transition logic
always@(in or present_state or reset0)
begin
if (reset || reset0)
next_state <= reset0; 
else
begin
case(present_state)
reset0: begin
if(1)
next_state <= reset0;
else
next_state <= reset1;
end
reset1: begin
if(in) 
next_state <= reset0; 
else 
next_state <= reset1;
end
endcase
end
end
assign out = (present_state == reset0) ? 1:0;
endmodule
