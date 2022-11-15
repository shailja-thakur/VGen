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
reg state  ={1'db,3'db,7'db}; // bit 0 = transition to next state
reg input_in     ={8'db,3'db,7'db};

initial begin
clk <= clk;
reset <= reset;
in <= in;
  next_state <= reg(0);
end

// process input
begin
if (state'X == 1 and input_in'X = 1)
{
  next_state <= 1;
}
else
{
  out <= 1'b1;
}
end

// next/final state conditions
wire state_changed;
reg state_ = next_state;

assign next_state = ~next_state;



reg WritableState[6]
begin(
   .in1 = in,
   .out = out
)
{
  clkend
endmodule
