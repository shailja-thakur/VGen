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
//This is a state machine that is not really an FSM.
//It uses the clk and reset inputs to control the state machine.
//It uses the a and b inputs to determine the state of the machine.
//It uses the output z to determine the state of the machine.
//It uses the next_state to determine the next state of the machine.
//It uses the cur_state to determine the current state of the machine.
//It uses the clk and reset inputs to control the state machine.
//It uses the a and b inputs to determine the state of the machine.
//It uses the output z to determine the state of the machine.
//It uses the next_state to determine the next state of the machine.
//It uses the cur_state to determine the current state of the machine.
//It uses the clk and reset inputs to control the state machine.
//It uses the aendmodule
