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
//S1 is when a is high and b is low.
//S2 is when a is low and b is high.
//S3 is when both a and b are high.

always @(posedge clk) begin
    if (reset == 0) begin
        cur_state = IDLE;
    end else begin
        cur_state = (a == 0) ? S1 : (b == 0) ? S2 : S3;
    end
    next_state = cur_state;
    z = cur_state;
end
end
endmodule
