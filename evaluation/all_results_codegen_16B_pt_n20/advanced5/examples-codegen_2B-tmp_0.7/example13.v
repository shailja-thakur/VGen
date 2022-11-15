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
reg [3:0] mux;
reg [7:0] db;
// It is possible to implement an FSM with more than one inputs using adc or multiplexer.

always @(posedge clk)
    if (cur_state == IDLE)
        next_state = IDLE;
    else if (cur_state == S1 && a == 1)
        next_state = S2;
    else if (cur_state == S2 && b == 1)
        next_state = S3;
    else if (cur_state == S3 && a == 1 && b == 1)
        next_state = IDLE;
    else 
        next_state = IDLE;
    cur_state = next_state;
    mux = 0;
    if (cur_state == S1)
        mux = 1;
    endmodule
