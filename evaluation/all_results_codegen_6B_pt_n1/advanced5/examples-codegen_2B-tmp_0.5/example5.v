// This is an FSM.
module abro(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
//The inputs are a and b.
//The output is a signal that is high when a and b are high and low when a and b are low.
//The output is a signal that is high when a is high and low when a is low.
//The output is a signal that is high when b is high and low when b is low.
//The output is a signal that is high when a and b are both high and low.
//The output is a signal that is high when a and b are both low and high.
//The output is a signal that is high when a is high and b is high.
//The output is a signal that is high when a is high and b is low.
//The output is a signal that is high when a is low and b is high.
//The output is a signal that is high when a is low and b is low.
//The output is a signal that isendmodule
