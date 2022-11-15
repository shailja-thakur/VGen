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
module fsm(
input clk, reset,
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
// FSM with interleaving of transitions
//A state transition occurs when the current state is 0 and a signal is asserted
//The next state is the transited state.
//The current state is 0, the input signals a and b, the next state is 1, the input signals b and a.
//The current state is 1, the input signals b and a, the next state is 2, the input signals a and b.
//The current state is 2, the input signals a and b, the next state is 3, the input signals b and a.
//The current state is 3, the input signals b and a,endmodule
