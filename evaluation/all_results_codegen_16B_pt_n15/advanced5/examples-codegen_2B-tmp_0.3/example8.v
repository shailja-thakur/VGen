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
//This is a simple state machine.
always @(posedge clk)
begin
    if (a == 1)
        next_state = S1;
    else if (b == 1)
        next_state = S2;
    else
        next_state = S3;
    cur_state = next_state;
    if (cur_state == S1)
        z = 1;
    else if (cur_state == S2)
        z = 2;
    else
        z = 3;
end
endmodule
