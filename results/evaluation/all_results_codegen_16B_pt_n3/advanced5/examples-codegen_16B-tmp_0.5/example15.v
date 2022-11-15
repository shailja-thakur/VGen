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
//There are three states: IDLE, S1, S2
always @(*) begin
    if(clk == 1)
        cur_state = IDLE;
    else if(clk == 1 && reset == 1)
        cur_state = IDLE;
    else if(clk == 1 && reset == 0)
        cur_state = next_state;
    else if(clk == 1 && reset == 1)
        cur_state = S1;
    else if(clk == 1 && reset == 0)
        cur_state = S2;
    else if(clk == 1 && reset == 1)
        cur_state = S3;
    else if(clk == 1 && reset == 0)
        cur_state = S1;
    else if(clk == 1 && reset == 1)
        cur_state = S2;end
endmodule
