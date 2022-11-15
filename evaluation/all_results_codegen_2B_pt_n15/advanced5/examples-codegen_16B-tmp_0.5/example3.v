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
//We use a state machine with a priority encoder to get the right priority.
//The priority encoder is a 4 bit binary counter.
//The input signals a and b are connected to the input ports of the 4 bit binary counter.
//The output z is connected to the output port of the 4 bit binary counter.
//The states of the FSM are S1, S2, S3.
//The transitions are:
//S1 -> S2 when a = 1, b = 0, and cur_state = 1
//S2 -> S3 when a = 0, b = 1, and cur_state = 2
//S3 -> S1 when a = 1, b = 1, and cur_state = 3
//The priority encoder is a 4 bit binary counter.
//The input signals a and b are connected to the input ports of the 4 bit binary counter.
//The output z is connectedendmodule
