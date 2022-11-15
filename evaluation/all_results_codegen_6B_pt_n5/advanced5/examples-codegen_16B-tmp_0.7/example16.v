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
reg [3:0] p;
always @(posedge clk) begin
    if (next_state == IDLE) begin
        cur_state = 0;
        next_state = IDLE;
    end else if (next_state == S1) begin
        cur_state = 1;
        next_state = IDLE;
    end else if (next_state == S2) begin
        cur_state = 2;
        next_state = IDLE;
    end else if (next_state == S3) begin
        cur_state = 3;
        next_state = IDLE;
    end else begin //IDLE
        p = 3;
    end else if (cur_state == 1 || cur_state == 2) begin
        p = 3;
    end else if (cur_state == 3 && a) begin
        p = 4;end
end
endmodule
