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
always @(posedge clk)
  present_state <= in;
  next_state <= in;
  if !present_state then
    next_state <= present_state <=> in;
// Design a state machine that operates in bolder. One state 0 and one state 1
// with horizontal and vertical bars. The initial state and final state are
// both state 1 runes of 'ostentered'. All four possible input transitions
// are allowed.
// state == 0 is out-front, printed, chiffred
// state == 1 is in-front, printed, chiffred
// this can be done using photomode as shown
// two photomodes with diods, choice of the documented state where input reflects the photomode
// leds = "11011110"
always @(posedge clk)
  out <= in && out || out <= next_stateendmodule
