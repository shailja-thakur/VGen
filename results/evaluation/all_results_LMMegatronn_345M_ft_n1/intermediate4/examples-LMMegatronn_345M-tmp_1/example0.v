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
reg [1:0] next_state;
// And a register, reused to compare in from the two states don't compile here.
wire [1:0] logic1;
assign {out, present_state} = in;

// Optional statement to help timing.
// A register. It does not have many states to allow the effect of the clock
// to see the processor before starting a new transaction.
reg new_state;
always@(posedge clk)
begin
  {next_state,copy_state} <= {next_state,copy_state};
  if(reset)
    // Do nothing!
    state <= 0;
  else
    // Do nothing!
    state <= (state==0) ? next_state : state+1'b1;
end

assign out = (reset) ? next_stateendmodule
