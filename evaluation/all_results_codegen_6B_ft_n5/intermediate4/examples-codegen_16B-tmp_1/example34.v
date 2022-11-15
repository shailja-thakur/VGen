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
// state serial_out, clock = 0
// state serial_out, clock = 1
// Flip-flop state Logic:
reg state_flipfloptb;
always @(posedge clk)
begin
if(reset) begin
state_flipfloptb<=1'b0;
present_state<=1'b0;
end
else begin // reset ends here
case(present_state) // case to alter the output based on the current flip flop value of 0 or 1
1'b0 :begin 
if(in) begin //////// Start of logic to define state transition based on the 1 bit input called in
next_state<=1'b0;
state_flipfloptb<=1'b0;
end
else begin/// Start of logic to define state transition based on the 0 bit input called in
next_state<=end
endmodule
