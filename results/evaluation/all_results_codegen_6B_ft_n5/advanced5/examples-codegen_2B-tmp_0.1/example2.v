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
//The output z is high when the input a is high and the input b is low.
//The output z is low when the input a is low and the input b is high.
//The output z is low when the input a is high and the input b is high.
//The output z is low when the input a is low and the input b is low.

always @(*)
begin
    if (clk == 1)
    {
        cur_state = S1;
    }
    else
    {
        cur_state = S2;
    }
    next_state = S3;
    if (a == 1)
    {
        if (b == 1)
        {
            next_state = S1;
        }
        else
        {
            next_state = S2;
        }
    }
    else
    {
end
endmodule
