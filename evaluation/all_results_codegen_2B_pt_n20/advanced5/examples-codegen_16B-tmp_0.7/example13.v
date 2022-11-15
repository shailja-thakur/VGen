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
module abro_with_output(
input clk, reset, 
input a, input b, output z,
output a_out, output b_out );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM.
module abro_with_input(
input clk, reset, 
input a, input b,
output z,
output a_out, output b_out );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM.
module abro_with_output_and_input(
input clk, reset, 
input a, inputendmodule
