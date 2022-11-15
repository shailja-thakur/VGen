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
always @() begin
  // The following event synthesizes the statement: out <= in && (next_state==0)
  if ( reset
    or active edge(clk)
    or (next_state==0)
    or (next_state==1 and active edge(in)) ) begin
    next_state <= in;
  end else begin
    next_state <= (in and (next_state==0)) or not(in);
  end
end
`

// all examples for C
var fsmExamplesForC = `
# system_mal
key 0=state 1
system_mal(clk, reset, in, out);
in_queue(in).
out_queue(out);
ram(data, 0x8).write(data_out, 0, 0, 32, 1, "bigendian");
reg data_in, data_outendmodule
