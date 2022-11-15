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
module abro_out(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
input [7:0] a_in,b_in;
output [7:0] z_out;

always @(posedge clk)
begin
    if (reset)
        cur_state = IDLE;
    else if (a && b)
        cur_state = S1;
    else if (b && !a)
        cur_state = S2;
    else if (!a && !b)
        end
endmodule
