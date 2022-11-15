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
// Each time clock pulses, slot will be filled holding same number
parameter slot = 32'd10;
// For sequence 01010
parameter zero = slot*2, one = slot*2 + 1;
parameter fall_key = 2'b00, rise_key = 2'b01, error_key = 2'b11;
parameter state_1 = 2'd0, state_0 = 2'd1, state_1_error = 2'd2, state_0_error = 2'd3;
// The present state of state machine will tell whether to drive out/out or low/low
wire [15:0] current_state;
// function returns a string (name of the instance) of a state machine and the present generated sequence
// It returns when the next state is calculated and posedge of the clock has arrived
//
// Moore machine to check repeated pattern at the same time
//endmodule
