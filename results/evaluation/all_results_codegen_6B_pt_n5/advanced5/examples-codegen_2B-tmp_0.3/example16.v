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
reg [1:0] state;

always @(posedge clk)
begin
    if (a == 1)
        next_state = S1;
    else
        next_state = S2;
    if (b == 1)
        next_state = S3;
    state = next_state;
    cur_state = state;
    if (cur_state == S1)
        z = 1;
    else if (cur_state == S2)
        z = 0;
    else if (cur_state == S3)
        z = 1;
end

always @(posedge clk)
begin
    if (cur_state == S1)
        state = S2;
    else if (cur_state == S2)
        state = S1;
    else if (cur_state == S3)
        end
endmodule
