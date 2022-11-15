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
//The output z is low when the input signals a and b are low.
always @(posedge clk)
begin
    if (reset == 1)
        cur_state = IDLE;
    else
        cur_state = (a == 1) ? S1 : (b == 1) ? S2 : S3;
    next_state = cur_state;
end
always @(posedge clk)
begin
    if (reset == 1)
        z = 0;
    else
        z = (cur_state == S1) ? 1 : (cur_state == S2) ? 1 : 0;
end
endmodule
