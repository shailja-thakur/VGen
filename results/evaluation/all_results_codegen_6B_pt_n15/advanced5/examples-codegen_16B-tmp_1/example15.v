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
FSM abro_out(
input clk,
input [1:0] c0, input [1:0] c1,
output z,
input a, input b
SUPPORT (true, true, true, true) = PERMINTEXT , PERMINTEXT , PERMINTEXT , PERMINTEXT ; 
CONST int sz  = 5;
//CONST int fsk = S1;
reg int i;
always @(posedge clk)
begin
    if (c0 == fsk && c1 == fsk)
        a ? next_state = S1 : next_state = fsk;  
    else if (c0 == fsk) 
        b ? next_state = S2 : next_state = fsk; 
    else if (c1 == fsk) 
        a ? next_state = S3end
endmodule
