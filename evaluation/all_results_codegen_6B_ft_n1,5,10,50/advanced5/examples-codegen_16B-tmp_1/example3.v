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
module abro_prev(
input clk, reset, 
input a, b, z,  output monitor, 
input A, B, C, D, E, f, g, H, I, J, k, L, M, N, o, p, q, r, s, S, t, U);//, X, Y);
parameter IDLE = 0,
S1 = 1,
S2 = 2;
reg state;
module abro_fsm (
input clk, reset, 
input a, b, monitor, 
input A, B, C, D, E, f, g, H, I, J, k, L, M, N, o, p, q, r, s, S, t, U, Z);//, X, Y);
parameter IDLE = 0,
S1 = 1,
S2 =endmodule
