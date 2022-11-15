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
//This is the only way to have both a and b high at the same time.
reg [1:0] state;
always @(posedge clk)
begin
    if ((a == 1 && b == 1) || (a == 1 && b == 0) || (a == 0 && b == 1))
        next_state <= S2;
    else
        next_state <= S3;
    if (cur_state == S1)
        state <= next_state;
    else if (cur_state == S2)
        state <= next_state;
    else if (cur_state == S3)
        state <= next_state;
    else
        state <= next_state;
    cur_state <= next_state;
end
endmodule
