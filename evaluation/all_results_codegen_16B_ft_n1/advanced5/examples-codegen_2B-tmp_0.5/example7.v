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
//It is a bit-wise OR of the inputs.
//It is a bit-wise AND of the outputs.
//It is a bit-wise AND of the inputs.
//It is a bit-wise OR of the outputs.
//It is a bit-wise AND of the inputs.
//It is a bit-wise AND of the outputs.
//It is a bit-wise OR of the inputs.
//It is a bit-wise AND of the outputs.
//It is a bit-wise AND of the inputs.
//It is a bit-wise OR of the outputs.
//It is a bit-wise AND of the inputs.
//It is a bit-wise AND of the outputs.
//It is a bit-wise AND of the inputs.
//It is a bit-wise OR of the outputs.
//It is a bit-wise AND of the inputs.
//It is a bitendmodule
