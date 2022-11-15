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
//It can be implemented as a latch and a shift register.
//State machine transition table:
initial state idle = STATE_0;
initial state S1 = STATE_1;
initial state S2 = STATE_2;
initial state S3 = STATE_3;

always @(posedge clk)
begin
    if (reset == 1)
        cur_state = IDLE;
    else
        cur_state = IDLE;
    next_state = IDLE;
    if (a == 1)
        cur_state = S1;
    else if (b == 1)
        cur_state = S2;
    else
        cur_state = S3;
end

always @(posedge clk)
begin
    z = cur_state;
end
endmodule
