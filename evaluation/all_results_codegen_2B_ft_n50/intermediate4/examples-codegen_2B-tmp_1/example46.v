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
// Then, use present and next state to infer
// next state = present state + in
// present state = in + prev state

always @(posedge clk or negedge reset)
begin:state_proces
if(reset == 1'b0)
present_state <= 1'b0;
else
present_state <= next_state;
end


always @(present_state, next_state)
begin:state_table
if(present_state == next_state)
next_state <= 2'b00;
else if (present_state == 2'b00)
next_state <= next_state;


end


always @(posedge clk or negedge reset)
begin:out_lookup
if(reset == 1'b0)
out <= 1'b0;
else begin
case(next_state)
1end
end
endmodule
